# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 040 - Use a palavra then para escrever um if numa única linha
#
#
# Caso deseje escrever um if inline, sem usar o operador ternário
# por questões de legibilidade. Não esqueça do end
#
#

puts "Digite 0 para mão esquerda, qualquer coisa pra mão direita"
x = gets.to_i
resultado = if x == 0 then "Ganhou um doce" else "Não ganhou nada" end
puts resultado

