# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 085 - Use reduce/inject para percorrer uma coleção e retornar um valor
#
#
#
# http://ruby-doc.org/core-2.3.1/Enumerable.html#method-i-reduce
#
#
# Junto com #map, #reduce que tem por sinônimo #inject é uma função
# muito utilizada em Programação Funcional.
#
#
# O método #reduce combina todos os elementos do enumerável (enum)
# aplicando uma operação binária especificada pelo bloco ou
# pelo nome de um método passado como símbolo.
#
#
# Em nosso exemplo, vamos somar todos os números de 1 a 100
# com a operação reduce/inject
#
#
# Caso o primeiro elemento (memo) não seja especificado, o primeiro
# elemento da coleção será utilizado.
#
#


puts (1..100).inject { |soma, n| soma + n } 

#
# Soma começa valendo 1, porque não foi especificado
#


puts (1..100).to_a.reduce(:+)


#
#
# Encontra a maior palavra
#

palavras = %w(laranja abacate abacaxi morango maça ornitorrinco banana pera ar uva)

maior = palavras.reduce { |memo, palavra| memo.length > palavra.length ? memo : palavra }

puts maior
