import tweepy
import Data as db

consumer_key = "9fypUzEK5LcevhvPTAaB1075c"
consumer_secret = "uA30dqCXcJpBMfdTKFGf4UVTz3bOHFleTFRJVqZdPpsJNGTQLI"
access_token = "808707793641492481-C2YBjh2TeH4TOygGfoUe1wBrdZJD6na"
access_token_secret = "2oC7X9NgFRHwjjt2U0iaXmsV2LYxy0bVfjFLYupC36GjT"

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

pesquisa = ["Livrarias" or "Comprar Livros" or "Onde encontro livros" or "Encontrar livros"]
publicacoes = api.search(q=pesquisa)

for pesquisar in publicacoes:
    nome = pesquisar.user.screen_name
    localizar = pesquisar.user.location
    tweeter = pesquisar.text
    consulta= """insert into """+db.tabela+""" (Nome, Localizacao, Tweet) values ('""" + str(nome) + """','""" + str(localizar) + """','"""+ str(tweeter) +"""');"""
    #consulta= """insert into """+db.tabela+""" (Nome) values ('""" + str(nome) + """');"""
    print(consulta)
    result = db.conn.execute(consulta)
    print(result)
    result = db.conn.execute('select * from '+db.tabela+';')
    df = db.pandas.DataFrame(result.fetchall())
    print(df)
    print("\n")
    print(pesquisar.user.screen_name)
    print(pesquisar.user.location)
    print (pesquisar.text)
    print("\n"),