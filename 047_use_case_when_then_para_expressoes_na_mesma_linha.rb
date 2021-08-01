# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 047 - Use case when then para expressões na mesma linha
#
#
# Assim como o comando if inline utilizando then (if <cond> then)
# podemos construir um when <cond> then <expr> para cláusulas inline.
# Isso aumenta a legibilidade do código e diminui o número de linhas
#
#
#
#
#

puts "Digite um mês, de 1 a 12, para eu dizer aproximadamente
a estação do ano"

mes = gets.to_i 

case mes
when 1..3 then puts "Verão"
when 4..6 then puts "Outono"
when 7..9 then puts "Inverno"
when 10..12 then puts "Primavera"
else puts "Você é muito rebelde. Eu disse entre 1 a 12"
end



