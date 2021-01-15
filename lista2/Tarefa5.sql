-- cria o banco de dados
create database db_construindo_a_nossa_vida;
 
 -- acessa o banco de dados
use db_construindo_a_nossa_vida;

create table tb_categoria(
id tinyint auto_increment,
nome varchar(30) not null,
ativo boolean not null,
primary key (id)
);

-- insere dados na tabela
insert tb_categoria (nome, ativo) values ("Ferramentas",true);
insert tb_categoria (nome, ativo) values ("Ferragens",true);
insert tb_categoria (nome, ativo) values ("Madeiras",true);
insert tb_categoria (nome, ativo) values ("Materiais de Construção",true);
insert tb_categoria (nome, ativo) values ("Materiais de Elétricos",true);

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
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Maquinas de solda",2000.00,5,1);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Betoneiras",3000.00,30,1);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Caixas de Correio",100.00,30,2);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Cavaletes",150.00,30,2);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Pallets",88.96,30,3);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Forros",20.00,30,3);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Cimento",66.70,30,4);
insert tb_produto (nome, preco, qtdProduto, categoria_id) values ("Conduite",40.93,30,4);


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
