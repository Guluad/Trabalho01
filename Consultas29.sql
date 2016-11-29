use BookWhere;

#todos os dados
#DONE
select * from Usuario;
select * from Contato;
select * from Exemplar;
select * from Livro;
select * from Livro;
select * from Endereco;
select * from Cidade;
select * from Estado;
select * from Encontra;
select * from Possui;

#where
#DONE
select * from Usuario where sexo = 'M';
select * from Exemplar where genero = 'Aventura';
select * from Contato where tipo_contato = 'Facebook';

#operadores logicos
#DONE
select * from Endereco where Numero > 160;
select nome_cidade as Nome from Cidade where id_Cidade > 004;

#like
#DONE
select * from Usuario where Nome like 'R%';
select * from Usuario where Email like '%hotmail%';
select * from Exemplar where Titulo like 'In%';

#update e delete
#DONE
update Exemplar set Titulo = 'Ceu' where genero = 'Romance';
update Usuario set Sexo = 'F' where login = 'rico_2099';
update Usuario set Login = 'guluad' where Nome = 'Gustavo Andrade';
delete from Contato where tipo_contato = 'Facebook';
delete from Contato where Descrição = 'Saraiva Online';
delete from local_negocio where nome_local = 'Livraria Saraiva MegaStore';

#junção
#DONE
select nome_local,nome_Cidade,Nome_Estado,Rua,Numero,CEP from endereco join local_negocio on (local_negocio.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);
select * from Exemplar join livro on (Exemplar.Cod_Exemplar = livro.Cod_Exemplar);
select nome_local,tipo_contato,descrição from possui join local_negocio on (local_negocio.Cod_negocio = possui.Cod_negocio) join contato on (contato.Cod_tipo = possui.Cod_tipo);
select nome,nome_local from Encontra join usuario on (usuario.Cod_usuario = Encontra.Cod_usuario) join local_negocio on (local_negocio.Cod_negocio = Encontra.Cod_negocio);
select Nome,nome_Cidade,Nome_Estado,Rua,Numero,CEP from endereco join usuario on (usuario.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);

#group by
#DONE
select genero, count(*) as qtd_livros from exemplar group by genero;
select sexo, count(*) as qtd from usuario group by sexo;
select tipo_contato,count(*)as qtd from contato group by tipo_contato;
select nome_local,count(titulo) qtd_livros from local_negocio join exemplar on (local_negocio.Cod_negocio = exemplar.Cod_negocio) group by nome_local;
select autor, count(*) as qtd_livros from exemplar group by autor;

#lelf & right join

Select login.nick as login_da_pessoa, id_pessoa,tipo_pessoa,usuario_empresa.Avaliacao,usuario_empresa.id_pessoa_emp
from login_pessoa
Right join usuario_empresa
on (usuario_empresa.id_pessoa_us = login_pessoa.id_pessoa);

Select login_pessoa.Login as login_da_empresa, id_pessoa,tipo_pessoa,empresa_usuario.Avaliacao,empresa_usuario.id_pessoa_us
from login_pessoa
Right join empresa_usuario
on (empresa_usuario.id_pessoa_emp = login_pessoa.id_pessoa);

Select login_pessoa.Login as login_da_pessoa,usuario_empresa.Avaliacao,usuario_empresa.id_pessoa_emp
from login_pessoa
left join usuario_empresa
on (usuario_empresa.id_pessoa_us = login_pessoa.id_pessoa);

Select id_pessoa,tipo_pessoa,empresa_usuario.Avaliacao,empresa_usuario.id_pessoa_us
from login_pessoa
left join empresa_usuario
on (empresa_usuario.id_pessoa_emp = login_pessoa.id_pessoa);

#join e view

Create view Todos_exemplares as
select Titulo,Autor,Genero,Editora,Preço from Exemplar join livro on (Exemplar.Cod_Exemplar = livro.Cod_Exemplar) order by preço;
select * from Todos_exemplares;

Create view Usuarios_endereço as
select Nome,Login,Sexo,Email,Numero,Rua,CEP,nome_Estado as Estado,nome_Cidade as Cidade from endereco join usuario on (usuario.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);
select * from Usuarios_endereço;

Create view Negocios_endereço as
select Nome_local as Nome,Numero,Rua,CEP,nome_Estado as Estado,nome_Cidade as Cidade from endereco join local_negocio on (local_negocio.Cod_endereço = endereco.Cod_endereço) join cidade on (endereco.id_Cidade = cidade.id_Cidade) join estado on (endereco.id_Estado = estado.id_Estado);
select * from Negocios_endereço;

#subconsulta
#DONE

select * from usuario where Cod_Usuario = (select max(Cod_Usuario) from usuario);
select * from local_negocio where Cod_negocio = (select min(Cod_negocio) from local_negocio);
select * from livro where preço = (select min(preço) from livro);


