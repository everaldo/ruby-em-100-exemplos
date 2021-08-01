# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 062 - Acessando elementos de um array
#
#
# http://ruby-doc.org/core-2.0.0/Array.html#method-i-5B-5D
#
#
#
# Utilizamos o método [] para acessar os elementos de um Array
#
#
# Em Ruby, podemos utilizar índices negativos.
#
# -1 sempre significará o último elemento do array
#
# Assim como substrings, também podemos facilmente cortar pedaços de subarrays
# passando dois parâmetros para o método []
#
#
#

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]



puts "último=#{a[-1]}"
puts "primeiro=#{a[-10]}"
puts "inválido retorna nil=#{a[-11].nil?}"


p a[2,4] # imprime 3, 4, 5, 6
