import pandas
import sqlalchemy
import MySQLdb
from sqlalchemy import create_engine

parametros_conexao='[endereço_do_banco]'
engine = create_engine(parametros_conexao)
conn = engine.connect()
tabela='tweets'
result = conn.execute('CREATE TABLE IF NOT EXISTS ' + tabela +' (Nome varchar(100),Localizacao varchar(100),Tweet varchar(255));')
