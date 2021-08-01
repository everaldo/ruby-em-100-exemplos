# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 046 - Use case com else para escolher uma opção padrão
#
#
# Semelhante ao default da linguagem C, do comando switch/case,
# podemos utilizar a cláusula else para dar uma opção padrão,
# quando nenhum gabarito é compatível com o valor do case.
#
#
#
#
#
#
#

puts "Digite um mês, de 1 a 12, para eu dizer aproximadamente
a estação do ano"

mes = gets.to_i 

case mes
when 1..3
  puts "Verão"
when 4..6
  puts "Outono"
when 7..9
  puts "Inverno"
when 10..12
  puts "Primavera"
else
  puts "Você é muito rebelde. Eu disse entre 1 a 12"
end



