# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 059 - Retorne uma substring de uma string
#
 #http://ruby-doc.org/core-2.2.0/String.html#method-i-5B-5D
#
#
# O método [] aceita inúmeros tipos de parâmetros, que podem
# ser consultados na documentação, tais como, expressão
# regular como parâmetro, um intervalo, um ou dois índices.
#
# Este método retorna uma substring da string original.
#
#
# Vamos exemplificar com 2 números inteiros. O primeiro,
# o índice (começando de 0), do primeiro elemento a ser
# retornado e o segundo índice representa o tamanho
# da substring.
#
#



str = "059 - Retorne uma substring de uma string"


puts str[0, 3]
puts str[18,9]
puts str[6, ] # Imprime somente R

## Para imprimir até o final da String, utilize um Range com -1 no término
puts str[6..-1]
