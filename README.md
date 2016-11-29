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




