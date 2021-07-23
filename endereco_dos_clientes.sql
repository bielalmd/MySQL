create database db_niver;		-- Criando a base de dados

use db_niver;					-- Usando a base de dados

create table tb_clientes(		-- Criando tabela de dados
id bigint(5) auto_increment,	-- numero indentificador(*)
nome varchar(50), 				-- nome definido como texto
estado varchar(50),				-- estado definido como texto
cidade varchar(50),				-- cidade definido como texto
rua varchar(50),   				-- rua definido como texto
limiteCredito decimal(10,2),	-- limiteCredito definido como decimal
primary key(id)					-- id definido como chave primaria(*)
);

								-- Inserindo dados de clientes
insert into tb_clientes ( nome, estado, cidade, rua, limiteCredito) value ("Pedro Carvalho de Souza", "RS", "Campo Bom", "Rua: São Paulo", 582.00);
insert into tb_clientes ( nome, estado, cidade, rua, limiteCredito) value ("Ana Carolina Ferreira", "RJ", "Niteroí", "Av. João de Toledo", 7415.70);
insert into tb_clientes ( nome, estado, cidade, rua, limiteCredito) value ("Gabriel Almeida dos Santos", "SP", "Guarulhod", "Av. Silvestre Pires de Freitas", 1850.74);
insert into tb_clientes ( nome, estado, cidade, rua, limiteCredito) value ("Rafael Silva Rosário", "RS", "Porto Alegre", "Rua: Cel Amarante", 452.99);
insert into tb_clientes ( nome, estado, cidade, rua, limiteCredito) value ("Carol Silva Barreto", "RS", "Erechim", "Av. 7 de Setembro", 5436.25);

								-- Corrigindo erro na digitação
update tb_clientes set cidade = "Guarulhos" where id = 3;
								
                                 -- Selecionando para exiber apenas clientes do Estado do Rio Grande do Sul "RS"
select * from tb_clientes where estado = "RS";
								
                                -- Inserindo apenas dados especificos 
select nome, rua from tb_clientes where estado = "RS"; 

select * from tb_clientes;

