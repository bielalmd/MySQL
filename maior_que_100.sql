-- O setor financeiro da empresa precisa de um relatório que mostre o código e o nome dos produtos cujo preço são menores que 10 ou maiores que 100.

create database db_LJmoveis;

use db_LJmoveis;

create table tb_products(
id bigint(3) auto_increment,
nome varchar(50),
quantidade int not null,
preco decimal(6,2),
primary key (id)
);

insert into tb_products (nome, quantidade, preco) values ("Guarda-Roupas", 13, 780.00);
insert into tb_products (nome, quantidade, preco) values ("Cômoda", 6, 310.00);
insert into tb_products (nome, quantidade, preco) values ("Escrivaninha", 25, 350.00);
insert into tb_products (nome, quantidade, preco) values ("Porta Relógio", 78, 5.50);
insert into tb_products (nome, quantidade, preco) values ("Cama Casal", 41, 1650.00);
insert into tb_products (nome, quantidade, preco) values ("Cama Solteiro", 66, 1049.90);

select * from tb_products;

select * from tb_products where preco > 100;

select * from tb_products where preco < 10;