create database db_geberation;

use db_generation;

create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(50),
funcao varchar(50),
filial varchar(50),
genero varchar(50),
salario decimal (10,2),
primary key(id)
);

insert into tb_funcionarios (nome, funcao, filial, genero, salario) values("Gabriel", "instrutor", "São Paulo","Masulino", 2289.22);
insert into tb_funcionarios (nome, funcao, filial, genero, salario) values("Rafael", "instrutor", "Maringá","Masulino", 1962.36);
insert into tb_funcionarios (nome, funcao, filial, genero, salario) values("Jes", "instrutor", "Salvador","Feminino", 2893.90);
insert into tb_funcionarios (nome, funcao, filial, genero, salario) values("Ana", "instrutor", "Belém","Feminino", 2550.47);
insert into tb_funcionarios (nome, funcao, filial, genero, salario) values("Jeff", "instrutor", "Curitiba","Masulino", 1456.14);

-- salario maior que 2000
select * from tb_funcionarios where salario > 2000;

-- salario menor que 2000
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set filial = "PortoAlegre" where id = 3;

select * from tb_funcionarios