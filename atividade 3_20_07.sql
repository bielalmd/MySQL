-- Crie um banco de dados
create database db_escola;

use db_escola;

-- Crie uma tabela estudantes

create table tb_estudante(
id bigint(8) auto_increment,
nomeAluno varchar(20),
cadastro int,
sala int,
notebook int,
notas decimal (10,2),
primary key (id)
);

-- Popule esta tabela com até 8 dados;

insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Carla", 65, 8, 12, 10.0);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Bruno", 78, 2, 10, 4.4);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Pedro", 75, 3, 4, 8.6);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Julia", 82, 8, 6, 6.9);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Barbara", 12, 3, 28, 9.4);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Antonio", 44, 2, 88, 2.2);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Lucaas", 22, 6, 90, 4.3);
insert into tb_estudante (nomeAluno, cadastro, sala, notebook, notas) value ("Ana", 36, 6, 1, 6.8);

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
select * from tb_estudante where notas > 7;

-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
select * from tb_estudante where notas < 7;

-- corrigir o nome do aluno lucas
update tb_estudante set nomeAluno = "Lucas" where id = 7;

update tb_estudante set nomeAluno = "Júlia" where id = 4;

-- mostra o console final
select * from tb_estudante
