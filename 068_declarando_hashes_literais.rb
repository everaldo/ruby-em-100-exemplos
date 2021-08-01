# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 068 - Declarando hashes literais
#
# http://ruby-doc.org/core-2.3.0/Hash.html
#
# Um hash (em PHP é o tipo array, em Java é o tipo HashMap,
# em Python o tipo Dictionary) é um mapa que associa chaves
# com valores, onde as chaves não precisam ser objetos do tipo inteiro
# e os valores são armazenados na estrutura de dados Hash.
#
#
# Desde a versão 1.9, Ruby honra a ordem de inserção de chaves num
# hash para iteração
#
# Os melhores valores candidatos a chaves numa hash são símbolos (Symbol).
# Porque eles são constantes, e por serem strings mantém a legibilidade
# do código alta.
# 
# Deve-se tomar cuidado ao utilziar Arrays e Objetos definidos pelo usuário
# como chaves de uma hash. Caso eles mudem, é preciso recalcular o hash
# invocando o método #rehash.
#
# Além disso, esses objetos devem honrar o método eql? Dois objetos que
# retornam true para eql? devem possuir o mesmo hash.
#
#
# Um hash pode ser criado utilizando-se a notação literal com os caracteres
# { }.
#
# Os pares de chave e valor são separados por vírgulas
#
# { "nome" => "João", "idade" => 19 }
#
# Chaves/valores são separados pelo símbolo =>
# Este símbolo é chamado de "hash-rocket", porque parece um foguete.
#
# HashRocket é/era uma famosa empresa de desenvolvimento de Software nos EUA.
# Dá pra saber de onde eles tiraram a inspiração. ;)
#
# A partir do Ruby 1.9, uma nova notação de hash para chaves como símbolos foi
# introduzida.
#
# Antigamente:
#
# { :nome => "João", :idade => 19 }
#
# A partir do Ruby 1.9
#
# { nome: 'João', idade: 19 } # Nome e idade são símbolos
#



joao = { nome: 'João', idade: 19 }


p joao.class
p joao 
puts joao[:nome]
puts joao[:idade]

joao[:idade] = 25

joao[:sexo] = 'masculino'

puts joao.keys

puts joao.values

p joao.to_a 









