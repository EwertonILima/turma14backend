-- cria o banco de dados
create database db_pizzaria_legal;

-- acessa o banco de dados
use db_pizzaria_legal;

-- cria a tabela
create table tb_categoria(
id tinyint auto_increment,
nome_categoria varchar(30) not null,
descricao varchar(255) not null,
primary key(id)
);

-- insere dados na tabela
insert tb_categoria(nome_categoria,descricao) values ("Salgada","Pizza é uma preparação culinária que consiste em um disco de massa fermentada de farinha de trigo, coberto com molho de tomate e ingredientes variados que incluem algum tipo de queijo, ervas, normalmente orégano ou manjericão, assado em forno.");
insert tb_categoria(nome_categoria,descricao) values ("Doce","Pizza é uma preparação culinária que consiste em um disco de massa fermentada de farinha de trigo, é um tipo de pizza preparada com chocolate e outros ingredientes doces como ingrediente principal. Existem vários estilos e técnicas de preparação.");
insert tb_categoria(nome_categoria,descricao) values ("Frita","Pizza frita (ou deep-fried pizza, em inglês) é um prato da culinária da Escócia.");
insert tb_categoria(nome_categoria,descricao) values ("Seca","Pizza seca, também conhecida como massa branca,simples aperitivo.");
insert tb_categoria(nome_categoria,descricao) values ("Massa de Pastel","é uma preparação culinária que consiste em um disco com a mesma massa do pastel");

-- cria a tabela
create table tb_pizza(
id_pizza bigint auto_increment,
sabor varchar(75) not null,
tamanho char not null,
valor decimal(5,2) not null,
id_categoria tinyint not null,
primary key(id_pizza),
foreign key(id_categoria) references tb_categoria (id)
);

-- insere dados na tabela
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Mussarela", 'M', 50.50, 1);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Calabresa", 'M', 50.50, 1);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Portuguesa", 'G', 65.50, 1);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Quatro queijos", 'G', 69.50, 1);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Banana", 'P', 30.90, 2);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Chocolate", 'P', 27.90, 2);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Sensação", 'G', 60.50, 2);
insert tb_pizza(sabor, tamanho, valor, id_categoria) values ("Abacaxi", 'G', 49.50, 2);

-- com o valor maior do que 45 reais
select * from tb_pizza where valor > 45;

-- com valor entre 29 e 60 reais
select * from tb_pizza where valor > 29 and valor < 60;

-- buscando os produtos com a letra C.
select * from tb_pizza where sabor like "C%";

-- inner join entre tabela categoria e pizza
select id_pizza, sabor, tb_pizza.id_categoria as tipo_de_pizza, tb_categoria.id as id_da_categoria, tb_categoria.nome_categoria, tb_categoria.descricao as descricao_da_categoria from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria;

-- produtos de uma categoria específica
select * from tb_pizza where id_categoria = 2;

