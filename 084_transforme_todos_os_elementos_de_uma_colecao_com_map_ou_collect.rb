# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 084 - Transforme todos os elementos de uma coleção com map
#       ou collect
#
# #map e #collect são sinônimos
#
# São métodos muito conhecidos para quem trabalha com Programação
# Funcional.
#
# #map irá percorrer cada elemento do array e retornar um outro array,
# onde cada novo elemento terá o valor final que o bloco retornou quando
# o elemento atual foi avaliado.
#
#
# Vamos fazer um exemplo simples, onde percorremos um array de números
# de 1 a 100 e retornamos false se o número não é primo e true se o número
# é primo
#
#

require 'prime' # inclui o método #prime? na classe Fixnum


puts (1..100).map { |n| n.prime? }

# Espero que você fique "mal-acostumado" de escrever pouco código
#



#
# #2
#
# Vamos pegar os números de 1 a 100 e retornar uma lista (array)
#
# com os valores de 1 / 2^n , com n variando de 1 a 100
#
#


puts (1..100).map { |n| (1.0 / (2 ** n)).to_r } # estilosos, imprimos como racionais
