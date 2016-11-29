INSERT INTO Usuario (Nome,Login,Sexo,Email,Senha,Cod_endereço,Cod_Usuario) values
('Camila Volponi', 'camilaV19','F','camilavolponi19@hotmail.com','psodjsf',003,001),
('Gustavo Andrade','gugu662','M','guguadrade662@hotmail.com','odjfbop',002,002),
('Ricardo Ferreira','rico_2099','M','eu_sou_rico@gmail.com','ufstkjnfnh',001,003);


INSERT INTO Contato(Cod_tipo,tipo_contato,Descrição,Cod_negocio) values
(1,'Facebook','Saraiva Online',100),
(1,'Facebook','Livraria Leitura',200),
(2,'Telefone',2731379351,300);


INSERT INTO Exemplar (Titulo,Autor,genero,Cod_exemplar,Editora,Cod_negocio) values
('Inferno','Dan Brown','Romance',666,'Arqueiro',200),
('Fortaleza Digital','Dan Brown','Romance',535,'Arqueiro',200),
('As cronicas de narnia','C. S. Lewis','Aventura',886,'HarperCollins',100),
('O Diabo dos Números','Hans Magnus Enzensberger','Infanto-juvenil',333,'Seguinte',300);


INSERT INTO Livro (preço,Cod_exemplar) values
(40.90,666),
(29.99,886),
(30.00,333);

INSERT INTO Cidade (nome_Cidade,id_Cidade) values
('Rio de Janeiro',22),
('Guarapari',15),
('Uberlândia',31),
('Vitória',10);


INSERT INTO Estado (nome_Estado,id_Estado) values
('RJ',4),
('BA',5),
('MG',6),
('ES',2);

INSERT INTO Local_negocio (nome_local,Cod_endereço,Cod_negocio) values
('Livraria Saraiva MegaStore',002,100),
('Livraria Leitura',001,200),
('Biblioteca Púlica Estadual',003,300);

INSERT INTO Encontra (Cod_Usuario,Cod_negocio) values
(001,100),
(002,200),
(003,300);

INSERT INTO possui (Cod_tipo,Cod_negocio) values
(1,100),
(1,200),
(2,300);

INSERT INTO Endereco (Cod_endereço,Numero,Rua,Cod_Negocio,CEP,id_Cidade,id_Estado) values
(001,165,'Av.João Batista Parra',300,29050375,10,2),
(002,131,'Av. João Naves de Ávila',200,38400100,31,6),
(003,240,'Rua Fonseca',100,27185478,22,4);

