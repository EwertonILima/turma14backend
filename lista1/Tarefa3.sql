-- Criação do banco
create database db_escola;

-- Usar banco
use db_escola;

-- Criação da tabela
create table tb_alunos(
id_aluno bigint(5) auto_increment,
nome varchar(75) not null,
data_nascimento date not null, 
genero char not null,
nota int not null,
primary key(id_aluno)
);

-- inserir dados na tabela
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Ewerton", '1990-05-03', 'M', 4);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Maria", '1990-12-28', 'F', 6);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Maria Carolina", '1990-06-15', 'F', 9);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Valter", '1990-07-25', 'M', 10);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Wladimir", '1990-05-20', 'M', 7);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Paulo", '1990-05-09', 'M', 8);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Mauricio", '1990-01-18', 'M', 10);
insert into tb_alunos (nome , data_nascimento, genero, nota) values ("Anderson", '1990-09-18', 'M', 8);


-- com a nota maior do que 7
select nome,date_format(data_nascimento, "%d/%m/%Y"), genero, nota from tb_alunos where nota >= 7;

--  com a nota menor do que 7
select nome,date_format(data_nascimento, "%d/%m/%Y"), genero, nota from tb_alunos where nota < 7;

-- atualizar dados na tabela
update tb_alunos set nota = 7 where id_aluno = 1;