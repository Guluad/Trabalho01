# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Gustavo dos Santos Andrade<br>
Lucas Sieleman<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Foi decidido desenvolver o "Book Where" por livros serem uma coisa que tem um papel grande no dia a dia de muitas pessoas e o aplicativo iria facilitar encontrar o que deseja com facilidade e eficiênia. <br>
    
###3	MINI-MUNDO<br>
O projeto reúne informações de bibliotecas, livrarias e sebos referente a livros, permitindo que o usuário pesquise por um livro e obtenha a informação de onde (quais livrarias, sebos e/ou bibliotecas) encontrá-los. Para utilizá-lo será necessario que o usuario crie uma conta, e assim serão guardadas suas informações pessoais, sobretudo suas pesquisas já realizadas e o local de onde acessa o computador. Possuindo a conta, o usuario poderá acessar o programa e pesquisar o livro que deseja. No banco de dados haverá todos os locais em que o livro está disponivel e isso será mostrado ao usuario. Ele poderá salvar essas informações para visitar ao local futuramente. <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![MOCKUPS](https://github.com/Guluad/Trabalho01/blob/master/NewProject.pdf?raw=true "MOCKUPS")<br>

###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Modelo Conceitual](http://i.imgur.com/Mfp1itA.jpg?raw=true "Modelo Conceitual")<br>
    5.2 NOTACAO UML
![UML](http://i.imgur.com/sjFQzBo.png?raw=true "UML")
<br>
####5.1 Validação do Modelo Conceitual
    [Grupo01]: Brenda e Daniele.
    [Grupo02]: Julia e Camilla.

####5.2 DECISÕES DE PROJETO ****

Foi criada uma tabela "Exemplar" além da tabela "Livro", considerando que livros iguais podem ter diferentes valores de acordo com o local, seu estado de conservação e material.
	
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

![Logico](http://i.imgur.com/lbA546f.png?raw=true "Logico")

###7	MODELO FÍSICO<br>

![Database](https://github.com/Guluad/Trabalho01/blob/master/BookWhereFinal29.sql?raw=true "Database")

<br>
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
As informações mostradas servem somente como demonstração, e somente os dados referentes às bibliotecas e livrarias são reais. Os demais dados são fictícios e não se comprometem com a realidade.<br>
O projeto teve como fonte de estudo os exercícios realizados em sala de aula, os slides compartilhados no moodle e pesquisas feitas na internet.
       
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>

![Insert](https://github.com/Guluad/Trabalho01/blob/master/Insert29.sql?raw=true "Insert")

<br>
###9	TABELAS E PRINCIPAIS CONSULTAS<br>

![Consultas](https://github.com/Guluad/Trabalho01/blob/master/Consultas29%20(2).sql?raw=true "Consultas")<br>

####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>

select * from Usuario;<br>
![Consulta](http://i.imgur.com/hZsCf41.png?raw=true "Consulta")<br>
select * from Contato;<br>
![Consulta](http://i.imgur.com/qo6dUzl.png?raw=true "Consulta")<br>
select * from Exemplar;<br>
![Consulta](http://i.imgur.com/EYKzOK5.png?raw=true "Consulta")<br>
select * from Livro;<br>
![Consulta](http://i.imgur.com/EiGMN12.png?raw=true "Consulta")<br>
select * from Endereco;<br>
![Consulta](http://i.imgur.com/YtkqTPy.png?raw=true "Consulta")<br>
select * from Cidade;<br>
![Consulta](http://i.imgur.com/Vsh5iIB.png?raw=true "Consulta")<br>
select * from Estado;<br>
![Consulta](http://i.imgur.com/wKtJrd6.png?raw=true "Consulta")<br>
select * from Encontra;<br>
![Consulta](http://i.imgur.com/lpK9o52.png?raw=true "Consulta")<br>
select * from Possui;<br>
![Consulta](http://i.imgur.com/0eSyZwj.png?raw=true "Consulta")<br>

####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>

select * from Usuario where sexo = 'M';<br>
![Consulta](http://i.imgur.com/1wDe4c7.png?raw=true "Consulta")<br>
select * from Exemplar where genero = 'Aventura';<br>
![Consulta](http://i.imgur.com/j5eQOGp.png?raw=true "Consulta")<br>
select * from Contato where tipo_contato = 'Facebook';<br>
![Consulta](http://i.imgur.com/Brodzm2.png?raw=true "Consulta")<br>

####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>

select * from Endereco where Numero > 160;<br>
![Consulta](http://i.imgur.com/IJ3GkWG.png?raw=true "Consulta")<br>
select nome_cidade as Nome from Cidade where id_Cidade > 004;<br>
![Consulta](http://i.imgur.com/FsKwYUT.png?raw=true "Consulta")<br>

####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>

select * from Usuario where Nome like 'R%';<br>
![Consulta](http://i.imgur.com/hcHSaDn.png?raw=true "Consulta")<br>
select * from Usuario where Email like '%hotmail%';<br>
![Consulta](http://i.imgur.com/oXXBSO1.png?raw=true "Consulta")<br>
select * from Exemplar where Titulo like 'In%';<br>
![Consulta](http://i.imgur.com/3PsKEKv.png?raw=true "Consulta")<br>

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>

update Exemplar set Titulo = 'Ceu' where genero = 'Romance';<br>
update Usuario set Sexo = 'F' where login = 'rico_2099';<br>
update Usuario set Login = 'guluad' where Nome = 'Gustavo Andrade';<br>
![Consulta](http://i.imgur.com/ci5ZY20.png?raw=true "Consulta")<br>
delete from Contato where tipo_contato = 'Facebook';<br>
delete from Contato where Descrição = 'Saraiva Online';<br>
delete from local_negocio where nome_local = 'Livraria Saraiva MegaStore';<br>
![Consulta](http://i.imgur.com/eKNOBPG.png?raw=true "Consulta")<br>

####9.6	CONSULTAS COM JUNÇÃO<br>

select nome_local,nome_Cidade,Nome_Estado,Rua,Numero,CEP from endereco join local_negocio on (local_negocio.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);<br>
![Consulta](http://i.imgur.com/GKzB9Xa.png?raw=true "Consulta")<br>
select * from Exemplar join livro on (Exemplar.Cod_Exemplar = livro.Cod_Exemplar);<br>
![Consulta](http://i.imgur.com/PCidQxm.png?raw=true "Consulta")<br>
select nome_local,tipo_contato,descrição from possui join local_negocio on (local_negocio.Cod_negocio = possui.Cod_negocio) join contato on (contato.Cod_tipo = possui.Cod_tipo);<br>
![Consulta](http://i.imgur.com/O8jUMsx.png?raw=true "Consulta")<br>
select nome,nome_local from Encontra join usuario on (usuario.Cod_usuario = Encontra.Cod_usuario) join local_negocio on (local_negocio.Cod_negocio = Encontra.Cod_negocio);<br>
![Consulta](http://i.imgur.com/azqJM2P.png?raw=true "Consulta")<br>
select Nome,nome_Cidade,Nome_Estado,Rua,Numero,CEP from endereco join usuario on (usuario.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);<br>
![Consulta](http://i.imgur.com/Eg6yeOg.png?raw=true "Consulta")<br>

####9.7	CONSULTAS COM GROUP BY<br>

select genero, count(*) as qtd_livros from exemplar group by genero;<br>
![Consulta](http://i.imgur.com/P2UiySX.png?raw=true "Consulta")<br>
select sexo, count(*) as qtd from usuario group by sexo;<br>
![Consulta](http://i.imgur.com/oxvoRGN.png?raw=true "Consulta")<br>
select nome_local,count(titulo) qtd_livros from local_negocio join exemplar on (local_negocio.Cod_negocio = exemplar.Cod_negocio) group by nome_local;<br>
![Consulta](http://i.imgur.com/C34oG9c.png?raw=true "Consulta")<br>
select autor, count(*) as qtd_livros from exemplar group by autor;<br>
![Consulta](http://i.imgur.com/bE4ccvs.png?raw=true "Consulta")<br>

####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>

select Titulo,Genero,Preço from Exemplar left join livro on (Exemplar.Cod_Exemplar = livro.Cod_Exemplar);<br>
![Consulta](http://i.imgur.com/Uf2qCbe.png?raw=true "Consulta")<br>
select Nome,nome_Cidade,Nome_Estado,CEP from endereco right join usuario on (usuario.Cod_endereço = endereco.Cod_endereço) left join cidade on (endereco.id_Cidade = cidade.id_Cidade) left join estado on (endereco.id_Estado = estado.id_Estado);<br>
![Consulta](http://i.imgur.com/MwYrPm6.png?raw=true "Consulta")<br>
select tipo_contato,descrição,Contato.Cod_negocio from Contato right join possui on (Contato.Cod_negocio= possui.Cod_negocio);<br>
![Consulta](http://i.imgur.com/6FYWJzl.png?raw=true "Consulta")<br>
select nome,nome_local from Encontra right join usuario on (usuario.Cod_usuario = Encontra.Cod_usuario) join local_negocio on (local_negocio.Cod_negocio = Encontra.Cod_negocio);<br>
![Consulta](http://i.imgur.com/EQ1XHdJ.png?raw=true "Consulta")<br>

####9.9	CONSULTAS COM SELF JOIN E VIEW<br>

Create view Todos_exemplares as
select Titulo,Autor,Genero,Editora,Preço from Exemplar join livro on (Exemplar.Cod_Exemplar = livro.Cod_Exemplar) order by preço;
select * from Todos_exemplares;<br>
![Consulta](http://i.imgur.com/OE9Nxim.png?raw=true "Consulta")<br>
Create view Usuarios_endereço as
select Nome,Login,Sexo,Email,Numero,Rua,CEP,nome_Estado as Estado,nome_Cidade as Cidade from endereco join usuario on (usuario.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);<br>
select * from Usuarios_endereço;<br>
![Consulta](http://i.imgur.com/SyGqQXC.png?raw=true "Consulta")<br>

Create view Negocios_endereço as
select Nome_local as Nome,Numero,Rua,CEP,nome_Estado as Estado,nome_Cidade as Cidade from endereco join local_negocio on (local_negocio.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);<br>
select * from Negocios_endereço;<br>
![Consulta](http://i.imgur.com/Kg0mU0T.png?raw=true "Consulta")<br>

####9.10	SUBCONSULTAS<br>

select * from usuario where Cod_Usuario = (select max(Cod_Usuario) from usuario);<br>
![Consulta](http://i.imgur.com/1tkC3Op.png?raw=true "Consulta")<br>
select * from local_negocio where Cod_negocio = (select min(Cod_negocio) from local_negocio);<br>
![Consulta](http://i.imgur.com/rwyWkUB.png?raw=true "Consulta")<br>
select * from livro where preço = (select min(preço) from livro);<br>
![Consulta](http://i.imgur.com/WPSNj2E.png?raw=true "Consulta")<br>

###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	Trabalho de Redes Sociais<br>
https://github.com/Guluad/Trabalho01/blob/master/database.py<br>
https://github.com/Guluad/Trabalho01/blob/master/search.py<br>

###12	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
Alguns erros ocorridos com as chaves estrangeiras e em algumas consultas feitas. <br>
###13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




