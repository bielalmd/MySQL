create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("sessão frutas", true);
insert into tb_categoria (descricao, ativo) values ("sessão verduras", true);
insert into tb_categoria (descricao, ativo) values ("sessão legumes", true);
insert into tb_categoria (descricao, ativo) values ("sessão sementes", true);
insert into tb_categoria (descricao, ativo) values ("sessão grãos", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
quantidade int not null, 
valor decimal (6,2) not null,
peso decimal (6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Pera em kg", 22, 15.90, 1.2, 1);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Laranja em kg", 80, 09.90, 2.5, 1);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Rucula em gramas", 19, 2.99, 100, 2);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Bróculis em gramas", 12, 15.40, 500, 2);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Banana em kg", 9, 9.90, 3.2, 3);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Berinjela em gramas", 17, 4.90, 350, 3);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Chia em gramas", 15, 1.99, 0.80, 4);
insert into tb_produto (nome, quantidade, valor, peso, categoria_id) values ("Farinha de Roça em gramas", 30, 7.40, 890, 5);

select * from tb_produto;

delete from tb_produto where id = 2;
delete from tb_produto where id = 8;
delete from tb_produto where id = 11;
delete from tb_produto where id = 12;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.quantidade, tb_produto.valor, tb_produto.peso, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 3;