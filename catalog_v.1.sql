
--create database catalog;

drop table if exists usuario cascade;
drop table if exists papel cascade;
drop table if exists usuario_papel cascade;
drop table if exists produto cascade;
drop table if exists log_produto cascade;
drop table if exists log_usuario cascade;

create table usuario (
id SERIAL PRIMARY KEY,
ativo boolean NOT NULL,
nome varchar(255) NOT NULL,
cpf char(11) NOT NULL,
email varchar(255) NOT NULL,
senha varchar(255) NOT NULL
);

create table papel (
id SERIAL PRIMARY KEY,
papel varchar(255) NOT NULL
);

create table usuario_papel (
id_usuario_papel SERIAL PRIMARY KEY,
id_usuario int NOT NULL,
id_papel int NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuario(id),
FOREIGN KEY (id_papel) REFERENCES papel(id)
);

create table produto (
id SERIAL PRIMARY KEY,
ativo boolean NOT NULL,
nome varchar(255) NOT NULL,
modelo varchar(255),
valor numeric NOT NULL,
localizacao varchar(255) NOT NULL,
anos_compativeis int8range,
cod_barra varchar(255),
end_imagem varchar(512),
descricao varchar(255)
);

create table log (
id SERIAL PRIMARY KEY,
acao varchar(255) NOT NULL,
data_alteracao date NOT NULL,
id_usuario int NOT NULL,
id_produto_alterado int NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuario(id),
FOREIGN KEY (id_produto_alterado) REFERENCES produto(id)
);


insert into papel (papel) values ('SUPERADMIN');
insert into papel (papel) values ('ADMIN');
insert into papel (papel) values ('USER');


