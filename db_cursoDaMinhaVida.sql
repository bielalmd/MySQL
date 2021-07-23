create database	db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(50),
horario varchar (50),
ativo boolean not null,
primary key (id)
);

insert into tb_categoria ( descricao, horario, ativo) values ("Engenharia Mecatronica", "Noite", true);
insert into tb_categoria ( descricao, horario, ativo) values ("Inglês", "Manhã", true);
insert into tb_categoria ( descricao, horario, ativo) values ("Engenharia Civil", "Manha", true);
insert into tb_categoria ( descricao, horario, ativo) values ("MySQL e Github", "Noite", true);
insert into tb_categoria ( descricao, horario, ativo) values ("Phyton", "Tarde", true);

select * from tb_categoria;

create table tb_produtos(
id bigint(8) auto_increment,
nome varchar (50) not null,
quantidade int not null, 
valor decimal (6,2) not null,
tipo_de_edicao varchar (255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Crso CIMETRIA e CALCULO AVANÇADO", 2, 950.00, "Limitado", 1);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso GEOMETRIA e ESTRUTURA", 4, 700.00, "Limitado", 1);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso VERBOS e SINTAXE", 26, 250.00, "Ilimitado", 2);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso CIMETRIA e CALCULO AVANÇADO", 2, 950.00, "Limitado", 1);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso BASICO", 80, 1700.00, "Limitado", 3);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso AVANÇADO", 2, 950.00, "Limitado", 3);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso BANCO DE DADOS e UPANDO PASTAS", 16, 150.00, "Limitado", 4);
insert into tb_produtos (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso CODIGO", 41, 1000.00, "Limitado", 5);

update tb_produtos set nome = "Curso CIMETRIA e CALCULO AVANÇADO" where id = 1;
delete from tb_produtos where id = 4;

select * from tb_produtos;

select * from tb_produtos where valor > 1000.00;

select * from tb_produtos where valor between 500.00 and 1000.00;

select * from tb_produtos where nome like "%E%";

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.valor, tb_produtos.tipo_de_edicao, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 2;










