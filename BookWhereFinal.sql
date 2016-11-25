drop database bookwhere;

create database if not exists BookWhere;

use BookWhere;

CREATE TABLE if not exists Usuario
(
Nome varchar(30),
Login varchar(12),
Sexo varchar(1),
Email varchar(35),
Senha varchar(20),
Cod_endereço int,
Cod_Usuario int,
PRIMARY KEY (Cod_Usuario)
);


create table if not exists local_negocio
(
nome_local varchar(40),
Cod_endereço int,
Cod_negocio int primary key
);


CREATE TABLE if not exists Contato 
(
Cod_tipo int,
tipo_contato VARCHAR(15),
Descrição VARCHAR(20),
Cod_negocio int,
PRIMARY KEY(Cod_tipo,Cod_negocio)
);


CREATE TABLE if not exists Exemplar 
(
Titulo varchar(40),
Autor varchar(25),
genero varchar(15),
Cod_exemplar int,
Editora varchar(20),
Cod_livro int,
Cod_negocio int,
PRIMARY KEY (Cod_Exemplar)
);


CREATE TABLE if not exists Livro 
(
preço double,
Cod_livro int,
Cod_exemplar int,
FOREIGN KEY (Cod_Exemplar) REFERENCES Exemplar (Cod_exemplar)
);


CREATE TABLE if not exists Cidade 
(
nome_Cidade VARCHAR(15),
id_Cidade int primary key
);


CREATE TABLE if not exists Estado 
(
nome_Estado VARCHAR(2),
id_Estado int primary key
);


CREATE TABLE if not exists Endereco 
(
Cod_endereço int,
Numero int,
Rua varchar(25),
Cod_negocio int,
CEP int,
id_Cidade int,
id_Estado int,
FOREIGN KEY (Cod_negocio) REFERENCES local_negocio (Cod_negocio),
FOREIGN KEY (id_Cidade) REFERENCES Cidade (id_Cidade),
FOREIGN KEY (id_Estado) REFERENCES Estado (id_Estado)
);


CREATE TABLE if not exists Encontra 
(
Cod_Usuario int,
Cod_negocio int,
FOREIGN KEY (Cod_Usuario) REFERENCES Usuario (Cod_Usuario),
FOREIGN KEY (Cod_negocio) REFERENCES local_negocio (Cod_negocio)
);


CREATE TABLE if not exists possui 
(
Cod_tipo int,
Cod_negocio int,
PRIMARY KEY (Cod_tipo,Cod_negocio),
FOREIGN KEY(Cod_negocio) REFERENCES local_negocio (Cod_negocio),
FOREIGN KEY (Cod_tipo) references contato (Cod_tipo)
);

