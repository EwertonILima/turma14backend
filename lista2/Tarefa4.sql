-- cria o banco de dados
create database db_cidade_das_carnes;
 
 -- acessa o banco de dados
use db_cidade_das_carnes;

create table tb_categoria(
id tinyint auto_increment,
nome varchar(30) not null,
ativo boolean not null,
primary key (id)
);

-- insere dados na tabela
insert tb_categoria (nome, ativo) values ("Bovino",true);
insert tb_categoria (nome, ativo) values ("Suino",true);
insert tb_categoria (nome, ativo) values ("Aves",true);
insert tb_categoria (nome, ativo) values ("Peixaria",true);
insert tb_categoria (nome, ativo) values ("Cordeiros",true);

-- cria a tabela
create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtdProduto int not null,
categoria_id tinyint,
primary key (id),
foreign key(categoria_id) references tb_categoria (id)
);

-- insere dados na tabela
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Filé de Peito",20.00,30,3);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Sobrecoxa",20.00,30,3);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Bacon",20.00,30,2);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Carré",88.96,30,5);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Peito de Frango Inteiro",20.00,30,3);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Salmão",66.93,30,4);


-- com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- com valor entre 3 e 60 reais
select * from tb_produto where preco > 3 and preco < 60;

-- buscando os produtos com a letra C.
select * from tb_produto where nome like "C%";

-- inner join entre  tabela categoria e produto
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id order by tb_produto.id;

-- produtos de uma categoria específica
select * from tb_produto where categoria_id = 1;
