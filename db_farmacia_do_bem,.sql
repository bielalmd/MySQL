create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,

medManipulado varchar(50),
medGenerico varchar(50),
medAlopatico varchar(50),

primary key (id)

);

insert into tb_categoria (medManipulado, medGenerico, medAlopatico) values ("Presao", "Dipirona", "Sitosirona");
insert into tb_categoria (medManipulado, medGenerico, medAlopatico) values ("Hormonio", "Lozartan", "Cicuta");
insert into tb_categoria (medManipulado, medGenerico, medAlopatico) values ("Diabete", "Mirolax", "Opioide");
insert into tb_categoria (medManipulado, medGenerico, medAlopatico) values ("Enxaqueca", "Nebacetim", "Morfina");
insert into tb_categoria (medManipulado, medGenerico, medAlopatico) values ("Aneurisma", "Droxilina", "Mescanina");

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
categoria char not null,
preco decimal(6,2) not null,
quantidade int not null,
dtValidade date,
generico boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)

);

insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("A", "128.00", 50,"2022_09_22", false, 1);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("B", "490.00", 6,"2023_07_10", false, 2);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("B", "18.00", 51,"2025_04_06", false, 2);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("C", "54.00", 78,"2024_01_31", false, 3);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("B", "69.00", 43,"2022_02_02", false, 2);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("A", "32.00", 82,"2023_03_15", false, 1);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("C", "40.00", 24,"024_03_27", false, 3);
insert into tb_produtos (categoria, preco, quantidade, dtValidade, generico, categoria_id) values ("A", "70.00", 27,"2024_07_18", false, 1);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 03.00 and 60.00;

select * from tb_produtos where categoria like "%b%";

select tb_produtos.categoria, tb_produtos.preco, tb_categoria.medGenerico as Generico 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria = "A";



