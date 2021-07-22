-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter 
-- o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
-- informações dos personagens desse game.

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
vilaOculta varchar(50) not null,
cla varchar(50) not null,
elemento varchar(50) not null,
primary key (id)
);

-- Popule esta tabela classe com até 5 dados.

insert into tb_classe (vilaOculta, cla, elemento) values ("da Folha", "Uzumaki", "Fogo");
insert into tb_classe (vilaOculta, cla, elemento) values ("do Som","Fuma", "Terra");
insert into tb_classe (vilaOculta, cla, elemento) values ("da Chuva", "Nakara", "Agua");
insert into tb_classe (vilaOculta, cla, elemento) values ("da Nuvem", "Tori", "Ar");
insert into tb_classe (vilaOculta, cla, elemento) values ("da Pedra", "Moon", "Fogo");

select * from  tb_classe;

create table tb_personagem(
id bigint(8) auto_increment,
nome varchar(50),
arma varchar(50),
classe varchar(50),
poderAtaque decimal(8,2) not null,  -- de 0 a 10k
poderDefesa decimal(8,2) not null,  -- de 0 a 10k
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Popule esta tabela personagem com até 8 dados.

insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Naruto","Kunai", "Suporte", 9000, 7400, 1);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Sasuke","Espada", "Ataque", 8500, 6000, 2);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Choji","Kunai", "Arqueiro", 5200, 4200, 1);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Nagato","Kunai", "Arqueiro", 8200, 2500, 2);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Guy","Kunai", "Ataque", 9800, 3400, 3);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Kakashi","Kunai", "Suporte", 650, 190, 4);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Raikage","Kunai", "Ataque", 9000, 1400, 3);
insert into tb_personagem (nome, arma, classe, poderAtaque, poderDefesa, classe_id) values ("Misukage","Espada", "Arqueiro", 9710, 1100, 4);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where poderAtaque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where poderDefesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "C%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select tb_personagem.nome, tb_personagem.arma, tb_classe.cla as Cla
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id; -- 2 2 1 2 1 1 2

select tb_categoria.tipoBorda, tb_categoria.tipoCaixa, tb_pizza.tipoMassa as Massa 
from tb_categoria inner join tb_pizza on tb_pizza.id = tb_categoria.pizza_id;

select * from tb_personagem where classe = "Arqueiro";
