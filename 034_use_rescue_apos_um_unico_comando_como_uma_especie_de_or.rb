# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 034 - Use rescue após um único comando, como uma espécie de OR
#
#
# rescue pode ser utilizado sem begin/end e sem método, desde que
# seja feita numa notação pós-fixa, após um único comando.
#
# Dessa forma, ele se comporta como uma espécie de OR.
#
# Vários rescue podem ser aninhados
#
#
# Note que fomos obrigados a fazer a atribuição novamente,
# pois quando Ruby encontra rescue ele abandona completamente
# o lado esquerdo da operação
#
# Esse tipo de rescue só funciona para exceções derivadas de
# StandardError
#
#

ERROR = -99
puts "Digite um número"
n = gets

n = Integer(n) rescue Float(n) rescue n = ERROR

puts n
