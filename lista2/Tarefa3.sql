-- cria o banco de dados
create database db_farmacia_do_bem;

-- acessa o banco de dados
use db_farmacia_do_bem;

-- cria a tabela
create table tb_categoria(
id tinyint auto_increment,
nome_categoria varchar(30) not null,
ativo boolean not null,
primary key(id)
);

-- insere dados na tabela
insert tb_categoria(nome_categoria, ativo) values ("Medicamentos", true);
insert tb_categoria(nome_categoria, ativo) values ("Vitaminas",true);
insert tb_categoria(nome_categoria, ativo) values ("Cosmeticos", true);
insert tb_categoria(nome_categoria, ativo) values ("Dermocosméticos", true);
insert tb_categoria(nome_categoria, ativo) values ("Mamãe & Bebê", true);

-- cria a tabela
create table tb_produto(
id_produto bigint auto_increment,
nome varchar(75) not null,
valor decimal(6,2) not null,
qtd_estoque bigint not null,
id_categoria tinyint not null,
primary key(id_produto),
foreign key(id_categoria) references tb_categoria (id)
);

-- insere dados na tabela
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Doril", 5.00, 5000, 1);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Vitaminca C", 2.00, 10000, 2);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Batom", 1.00, 500, 3);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Fralda", 50.00, 50000, 5);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Centrum", 20.00, 6000, 2);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Aspirina", 7.50, 4000, 1);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Anti-inflamatórios", 24.00, 9000, 1);
insert tb_produto(nome, valor, qtd_estoque, id_categoria) values ("Antibiótico", 53.00, 15000, 1);

-- com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

-- com valor entre 3 e 60 reais
select * from tb_produto where valor > 3 and valor < 60;

-- buscando os produtos com a letra B.
select * from tb_produto where nome like "B%";

-- inner join entre  tabela categoria e produto
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria order by id_produto;

-- produtos de uma categoria específica
select * from tb_produto where id_categoria = 3;

