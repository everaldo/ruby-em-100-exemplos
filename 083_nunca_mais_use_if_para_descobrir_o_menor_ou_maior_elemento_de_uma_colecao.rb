# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 083 - Nunca mais use if para descobrir o menor ou maior elemento
#       de uma coleção
# 
#
# Quem nunca teve que escrever um algoritmo para encontrar o menor
# de 3 números? Ou mesmo de 2 elementos?
#
# Com Enumerable, essa é uma tarefa trivial:
#


puts "Digite os elementos do array"
a = []
5.times do
  a << gets.to_i
end

p a
puts "Menor=#{a.min}"
puts "Maior=#{a.max}"
puts "Menor/Maior=#{a.minmax}"
