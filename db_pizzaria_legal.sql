create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza(
id bigint(5) auto_increment,
tipoMassa varchar(50) not null,
recheio varchar (50) not null,
tamanho varchar(50) not null,
preco decimal (6,2) not null,
primary key (id)
);

select * from tb_pizza;

insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Italiana", "Calabresa", "Broto", 25.70);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Francesa", "Mussarela", "Media", 38.32);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Brasileira", "Quatro Queijos", "Grande", 68.90);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Italiana", "Portuguesa", "Media", 42.50);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Americana", "Peperoni", "Media", 40.20);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Brasileira", "Palmito", "Grande", 72.65);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Italiana", "Chocolate", "Grande", 96.90);
insert into tb_pizza (tipoMassa, recheio, tamanho, preco) values ("Francesa", "Marguerita", "Broto", 30.40);

select * from tb_pizza;

create table tb_categoria (
id bigint(5) auto_increment,
tipoBorda varchar (50),
tipoForno varchar (50),
tipoCaixa varchar (50),
refri boolean not null,
feitoMao varchar(5) not null,
pizza_id bigint,
primary key (id),
FOREIGN KEY (pizza_id) references tb_pizza(id)
);

select * from tb_categoria;

INSERT INTO tb_categoria (tipoBorda, tipoForno, tipoCaixa, refri, feitoMao, pizza_id) values ("Chedar", "Lenha", "Papelao", false, "Sim", 1);
INSERT INTO tb_categoria (tipoBorda, tipoForno, tipoCaixa, refri, feitoMao, pizza_id) values ("Queijo", "Lenha", "Plastico", true, "Sim", 2);
INSERT INTO tb_categoria (tipoBorda, tipoForno, tipoCaixa, refri, feitoMao, pizza_id) values ("Catupiry", "Eletrico", "Papelao", true, "Sim", 1);
INSERT INTO tb_categoria (tipoBorda, tipoForno, tipoCaixa, refri, feitoMao, pizza_id) values ("Chedar", "Lenha", "Papelao", false, "Sim", 2);
INSERT INTO tb_categoria (tipoBorda, tipoForno, tipoCaixa, refri, feitoMao, pizza_id) values ("Catupiry", "Lenha", "Plastico", true, "Sim", 1);

select * from tb_categoria;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where recheio like "C%";

select tb_categoria.tipoBorda, tb_categoria.tipoCaixa, tb_pizza.tipoMassa as Massa -- 2 2 1 2 1 1 2
from tb_categoria inner join tb_pizza on tb_pizza.id = tb_categoria.pizza_id;

select * from tb_categoria where tipoBorda = "Chedar";