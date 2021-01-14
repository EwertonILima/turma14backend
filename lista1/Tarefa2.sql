-- Criação do banco
create database db_e_commerce;

-- Usar banco
use db_e_commerce;

-- Criação da tabela
create table tb_produtos(
id_produto bigint(5) auto_increment,
nome_produto varchar(75) not null,
qtd_estoque int not null, 
descricao varchar(255) not null,
preco float not null,
primary key(id_produto)
);

-- inserir dados na tabela
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 8", 0, "O PlayStation 8, ou PS8 é um video game da Sony lançado em 2041", 8000);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 7", 0, "O PlayStation 7, ou PS7 é um video game da Sony lançado em 2034", 7000);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 6", 0, "O PlayStation 6, ou PS6( é um video game da Sony lançado em 2027", 6000);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 5", 1000, "O PlayStation 5, ou PS5 é um video game da Sony lançado em 2020", 5000);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 4", 500, "O PlayStation 4, ou PS4 é um video game da Sony lançado em 2013", 2300);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 3", 100, "O PlayStation 3, ou PS3 é um video game da Sony lançado em 2006", 499);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 2", 30, "O PlayStation 2, ou PS2 é um video game da Sony lançado em 2000", 450);
insert into tb_produtos (nome_produto , qtd_estoque, descricao, preco) values ("Playstation 1", 10, "O PlayStation 1, ou PSONE é um video game da Sony lançado em 1994", 399);

-- produtos com o valor maior do que 500
select * from tb_produtos where preco > 500;

--  produtos com o valor menor do que 5000
select * from tb_produtos where preco < 500;

-- atualizar dados na tabela
update tb_produtos set qtd_estoque = 5 where id_produto = 3;