-- Criação do banco
create database db_recursos_humanos;

-- Usar banco
use db_recursos_humanos;

-- Criação da tabela
create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(75) not null,
idade int not null, 
cargo varchar(75) not null,
salario float not null,
primary key(id)
);

-- inserir dados na tabela
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Ewerton", 30, "Engenheiro de Software Pleno", 5000);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("João", 25, "Engenheiro de Software Junior", 3000);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Pedro", 18, "Estágiario de Desenvolvimento", 1500);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Maria", 33, "Engenheiro de Software Senior", 8000);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Isadora", 24, "Adminstrador de Base Dados", 6000);

-- funcionarios com salario maior que 2000
select * from tb_funcionarios where salario > 2000;

-- funcionarios com salario menor que 2000
select * from tb_funcionarios where salario < 2000;

-- atualizar dados na tabela
update tb_funcionarios set salario = 2100 where id = 3;