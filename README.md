# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Gustavo dos Santos Andrade<br>
Lucas Sieleman<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Foi decidido desenvolver o "Book Where" por livros serem uma coisa que tem um papel grande no dia a dia de muitas pessoas e o aplicativo iria facilitar encontrar o que deseja com facilidade e eficiênia. <br>
    
###3	MINI-MUNDO<br>
Para utilizar o programa será necessario que o usuario crie uma conta, seram guardadas informações pessoais do usuario. Possuindo a conta o usuario poderá acessar o programa e pesquisar o livro que  deseja. No bando de dados haverá todos os locais que o livro está disponivel e isso será mostrado ao usuario, ele pode salvar essa informação para poder ir ao local futuramente. <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![Alt text](http://i.imgur.com/jk81RPh.png?raw=true "Title")
![Alt text](http://i.imgur.com/aFsP4nC.png?raw=true "Title")
![Alt text](http://i.imgur.com/tuJMUDh.png?raw=true "Title")
![Alt text](http://i.imgur.com/mBWQ0Dq.png?raw=true "Title")
![Alt text](http://i.imgur.com/6xT1Mue.png?raw=true "Title")
![Alt text](http://i.imgur.com/LzXVrIl.png?raw=true "Title")
![Alt text](http://i.imgur.com/16X7cdQ.png?raw=true "Title")
![Alt text](http://i.imgur.com/UdCawvI.png?raw=true "Title")
![Alt text](http://i.imgur.com/BuUXudq.png?raw=true "Title")
![Alt text](http://i.imgur.com/tam6KIv.png?raw=true "Title")
![Alt text](http://i.imgur.com/d2xfPbg.png?raw=true "Title")
![Alt text](http://i.imgur.com/v9wxFp4.png?raw=true "Title")
![Alt text](http://i.imgur.com/x1Uj3gP.png?raw=true "Title")
![Alt text](http://i.imgur.com/LTeWAZG.png?raw=true "Title")
![Alt text](http://i.imgur.com/HJ4tgeT.png?raw=true "Title")

###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](http://i.imgur.com/Mfp1itA.jpg?raw=true "Modelo Conceitual")

####5.1 Validação do Modelo Conceitual
    [Grupo01]: Brenda e Daniele.
    [Grupo02]: Julia e Camilla.

####5.2 DECISÕES DE PROJETO ****
	
<br>
    
####5.3 DESCRIÇÃO DOS DADOS ****<br>
Usuário: tabela armazena as informações de cadastro de cada usuário.<br>
	Cod_Usuário: campo numérico que armazena um número de identificação único para cada usuário;<br>
	Login: campo de texto que armazena o login (não pode ser repetido) da conta do usuário;<br>
	Nome: campo de texto que armazena o nome completo do usuário;<br>
	Senha: campo de texto que armazena a palavra-chave da conta do usuário;<br>
	Sexo: campo de texto que armazena o sexo (masculino ou feminino) do usuário;<br>
	Email: campo de texto que armazena o endereço de e-mail do usuário.<br>
<br>
Endereço_Usuário: tabela que armazena o endereço do usuário, substituindo o atributo multivalorado.<br>
	Cod_Usuário: campo numérico que armazena um número de identificação único para cada usuário (chave estrangeira);<br>
	Rua: campo de texto que armazena o nome da rua;<br>
	CEP: campo numérico que armazena o Código de Endereçamento Local do usuário;<br>
	Cidade: campo de texto que armazena o nome da cidade do usuário;<br>
	Estado: campo de texto que armazna o nome da cidade do usuário;<br>
	Número: campo numérico que armazena o número residencial do usuário;<br>
<br>
Local: tabela armazena as informações de cada local.<br>
	Cod_Local: campo numérico que armazena um número de identificação único para cada local;<br>
	Nome: campo de texto que armazena o nome do local;<br>
<br>
Endereço_Local: tabela é uma tabela que armazena o endereço do local substituindo o atributo multivalorado.<br>
	Cod_Local: campo numérico que armazena um número de identificação único para cada local (chave estrangeira) do local;<br>
	Rua: campo de texto que armazena o nome da rua do local;<br>
	CEP: campo numérico que armazena o Código de Endereçamento Local do local;<br>
	Cidade: campo de texto que armazena o nome da cidade do local;<br>
	Estado: campo de texto que armazna o nome da cidade do local;<br>
	Número: campo numérico que armazena o número residencial do local;<br>
<br>
Livro: tabela armazena as informações de cada livro.<br>
	Cod_Livro: campo numérico que armazena um número de identificação único para cada livro;<br>
	Preço: campo numérico que armazena o valor de custo do livro;<br>
	Título: campo de texto que armazena o nome do livro;<br>
	Autor: campo de texto que armazena o nome do autor do livro;<br>
	Editora: campo de texto que armazena o nome da editora;<br>
	Gênero: campo de texto que armazena o gênero do livro (romance, não-ficção, biografia, etc).<br>
<br>
Tipo + Contato: tabela que armazena os contatos de cada local.<br>
	Cod_Local: campo numérico que armazena um número de identificação único para cada local (chave estrangeira);<br>
	Tipo_Contato: campo numérico que armazena um número que representa um tipo de contato diferente (e-mail, telefone, etc).<br>
	Descrição: campo que armazena o contato efetivamente.<br>
<br>
###6	MODELO LÓGICO<br>


###7	MODELO FÍSICO<br>

create database if not exists BookWhere;<br>

![Alt text](https://github.com/Guluad/Trabalho01/blob/master/BookWhereFinal.sql?raw=true "Database")

<br>
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
As informações mostradas servem somente como demonstração, e somente os dados referentes às bibliotecas e livrarias são reais. Os demais dados são fictícios e não se comprometem com a realidade.<br>
O projeto teve como fonte de estudo os exercícios realizados em sala de aula, os slides compartilhados no moodle e pesquisas feitas na internet.<br>


<br>        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
INSERT INTO Usuario (Nome,Login,Sexo,Email,Senha,Cod_endereço,Cod_Usuario) values<br>
('Camila Volponi', 'camilaV19','F','camilavolponi19@hotmail.com','psodjsf',003,001),<br>
('Gustavo Andrade','gugu662','M','guguadrade662@outlook.com','odjfbop',002,002),<br>
('Ricardo Ferreira','rico_2099','M','eu_sou_rico@gmail.com','ufstkjnfnh',001,003);<br>

INSERT INTO Contato(Cod_tipo,tipo_contato,Descrição,Cod_negocio) values<br>
(1,'Facebook','Saraiva Online',001),<br>
(1,'Facebook','Livraria Leitura',002),<br>
(2,'Telefone',2731379351,003);<br>


INSERT INTO Exemplar (Titulo,Autor,genero,Cod_exemplar,Editora,Cod_livro,Cod_negocio) values<br>
('Inferno','Dan Brown','Romance',666,'Arqueiro',626,002),<br>
('O Comitê da Morte','Noah Gordon','Romance',886,'Rocco',222,001),<br>
('O Diabo dos Números','Hans Magnus Enzensberger','Infanto-juvenil',333,'Seguinte',556,003);<br>


INSERT INTO Livro (preço,Cod_livro,Cod_exemplar) values<br>
(40.90,626,666),<br>
(29.99,222,886),<br>
(30.00,556,333);<br>

INSERT INTO Cidade (nome_Cidade,id_Cidade) values<br>
('Rio de Janeiro',22),<br>
('Uberlândia',31),<br>
('Vitória',10);<br>


INSERT INTO Estado (nome_Estado,id_Estado) values<br>
('RJ',4),<br>
('MG',6),<br>
('ES',2);<br>

INSERT INTO Local_negocio (nome_local,Cod_endereço,Cod_negocio) values<br>
('Livraria Saraiva MegaStore',002,100),<br>
('Livraria Leitura',001,200),<br>
('Biblioteca Púlica Estadual',003,300);<br>

INSERT INTO Encontra (Cod_Usuario,Cod_negocio) values<br>
(001,100),<br>
(002,200),<br>
(003,300);<br>

INSERT INTO possui (Cod_tipo,Cod_negocio) values<br>
(1,100),<br>
(1,200),<br>
(2,300);<br>

INSERT INTO Endereco (Cod_endereço,Numero,Rua,Cod_Negocio,CEP,id_Cidade,id_Estado) values<br>
(001,165,'Av.João Batista Parra',300,29050375,10,2),<br>
(002,131,'Av. João Naves de Ávila',200,38400100,31,6),<br>
(003,240,'Rua Fonseca',100,27185478,22,4);<br>
<br>
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
![Alt text](http://imgur.com/dYt9PlO?raw=true "Title")<br>

![Alt text](http://imgur.com/hepnbSw?raw=true "Title")<br>

![Alt text](http://imgur.com/5yC9VD3?raw=true "Title")<br>

![Alt text](http://imgur.com/BtEJDXe?raw=true "Title")<br>

![Alt text](http://imgur.com/w625OwZ?raw=true "Title")<br>

![Alt text](http://imgur.com/w625OwZ?raw=true "Title")<br>

![Alt text](http://imgur.com/WdQ23Kr?raw=true "Title")<br>

![Alt text](http://imgur.com/NdomKYh?raw=true "Title")<br>

![Alt text](http://imgur.com/bW7GnGb?raw=true "Title")<br>

![Alt text](http://imgur.com/NdomKYh?raw=true "Title")<br>

####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
####9.6	CONSULTAS COM JUNÇÃO<br>
####9.7	CONSULTAS COM GROUP BY<br>
####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
####9.10	SUBCONSULTAS<br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
Alguns erros ocorridos com as chaves estrangeiras e em algumas consultas feitas. <br>
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




