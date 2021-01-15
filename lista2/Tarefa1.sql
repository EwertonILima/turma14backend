-- cria o banco de dados
create database db_generation_game_online;

-- acessa o banco de dados
use db_generation_game_online;

-- cria a tabela
create table tb_classe(
id_classe tinyint auto_increment,
nome_classe varchar(30) not null,
descricao varchar(255) not null,
primary key(id_classe)
);

-- insere dados na tabela
insert tb_classe(nome_classe,descricao) values ("Humanos","Determinados e criativos, os Humanos conseguiram expandir seus domínios e impor sua vontade sobre os demais habitantes, dando origem aos cinco maiores impérios do planeta. Lute por supremacia e faça valer sua vontade!");
insert tb_classe(nome_classe,descricao) values ("Orcs","Orcs são seres muito fortes e resistentes, porém pecam em seu intelecto por serem uma raça livre da sociedade. ");
insert tb_classe(nome_classe,descricao) values ("Elfos","São tidos como excelentes arqueiros e possuem natural aptidão para as magias da Natureza (típica dos Druidas). Também famosos por Criarem Várias armadilhas para se livrar de seus inimigos.");
insert tb_classe(nome_classe,descricao) values ("Anões","Eles são guerreiros indomáveis, fortes e resistentes. Os reinos dos anões são poderosas cidadelas nas montanhas ou em minas.");
insert tb_classe(nome_classe,descricao) values ("Troll","Os trolls selvagens de Azeroth são infames pela crueldade, pelo tenebroso misticismo e pelo ódio efervescente que devotam a todas as outras raças.");

-- cria a tabela
create table tb_personagem(
id_personagem bigint auto_increment,
nome_personagem varchar(75) not null,
pontos_ataque smallint not null,
pontos_defesa smallint not null,
id_classe tinyint not null,
primary key(id_personagem),
foreign key(id_classe) references tb_classe (id_classe)
);

-- insere dados na tabela
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Shadow Mecer", 3000, 2500, 2);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Pitoco", 1000, 3000, 4);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Escanor", 5000, 5000, 1);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Legolas", 2500, 1100, 3);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Aragorn", 2000, 2000, 1);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Gimli", 2000, 3000, 4);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Dobe", 1500, 1500, 3);
insert tb_personagem(nome_personagem, pontos_ataque, pontos_defesa, id_classe) values ("Cyrex", 3000, 1500, 3);

-- com o poder de ataque maior do que 2000
select * from tb_personagem where pontos_ataque > 2000;

-- com poder de defesa entre 1000 e 2000
select * from tb_personagem where pontos_defesa > 1000 and pontos_defesa < 2000;

-- buscando os personagens com a letra C.
select * from tb_personagem where nome_personagem like "C%";

-- inner join entre  tabela classe e personagem
select id_personagem, nome_personagem, tb_personagem.id_classe as classe_do_personagem, tb_classe.id_classe as id_da_classe, tb_classe.nome_classe, tb_classe.descricao as descricao_da_classe from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.id_classe;

-- personagem de uma classe específica 
select * from tb_personagem where id_classe = 2;

