create database db_amazon;

use db_amazon;

create table tb_produtos(
id bigint(8) auto_increment,
nomeProduto varchar(255),
modelo varchar(255),
quantidade int,
preco decimal (10,2),
primary key(id)
);

insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Blusa", "Corta vento", 36, 149.90);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Smartphone", "Motorola", 12, 2150.88);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Calça", " Jeans", 87, 109.46);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Tenis", "Corrida", 28, 450.33);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Notebook", "Dell", 48, 7149.50);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Bicileta", "Caloi", 25, 945.76);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Tablet", "Apple", 55, 4879.20);
insert into tb_produtos(nomeProduto, modelo, quantidade, preco) value ("Video Game", "Xbox Series X", 14, 7450.00);

-- selecione maior que 500
select * from tb_produtos where preco > 500;

-- selecione menor que 500
select * from tb_produtos where preco < 500;

update tb_produtos set modelo = "Play Station 5" where id = 8;

select * From tb_produtos

