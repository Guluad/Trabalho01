import pandas
import sqlalchemy
import MySQLdb
from sqlalchemy import create_engine

parametros_conexao='mysql://Guluad:Batata@123@Guluad.mysql.pythonanywhere-services.com/Guluad$PyTwitter?charset=utf8'
engine = create_engine(parametros_conexao)
conn = engine.connect()
tabela='tweets'
result = conn.execute('CREATE TABLE IF NOT EXISTS ' + tabela +' (Nome varchar(100),Localizacao varchar(100),Tweet varchar(255));')