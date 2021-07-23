create database db_conNossaVida;
use db_conNossaVida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("sessão hidráulica", true);
insert into tb_categoria (descricao, ativo) values ("sessão elétrica", true);
insert into tb_categoria (descricao, ativo) values ("sessão de pintura", true);
insert into tb_categoria (descricao, ativo) values ("sessão de ferragens", true);
insert into tb_categoria (descricao, ativo) values ("sessão de ferramentas", true);

select * from tb_categoria;

delete from tb_categoria where id = 5;

create table tb_produto(
id bigint(5) auto_increment,
nome varchar (255) not null,
quantidade int not null, 
valor decimal (6,2) not null,
codigo_de_barra int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Torneira", 13, 18.60, 12345678, 1);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Cano", 48, 15.90, 98745678, 1);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Fios", 89, 11.88, 12094328, 2);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Tomada", 22, 9.90, 91245678, 2);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Tinta", 19, 55.60, 25783678, 3);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Rolo", 33, 9.50, 57390478, 3);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Ferro", 38, 14.60, 945638378, 4);


select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.quantidade, tb_produto.valor, tb_produto.codigo_de_barra, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;