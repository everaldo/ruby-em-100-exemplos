# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 045 - Use case when para escolher entre múltiplas condições
#
#
# Ao contrário do exemplo 039, onde usamos if e elsif para ilustrar
# a escolha de uma entre várias opções, podemos utilizar case when.
#
#
# case efetua a comparação com as cláusulas when utilizando o método
# Object#===
#
# Este método pode ser sobrescrito pelas subclasses, permitindo que
# elas sejam utilizadas diretamente em case / when.
#
# Exemplos: classe Range e Proc (Procedure) implementam essa sobrecarga.
#           Como são exemplos mais avançados, serão demonstrados posteriormente
#
# 
# Por questões de otimização, case when não utiliza o operador ===
# para comparar strings e números
#
#
# Vamos reescrever o exemplo 039
#
#
#
#puts "Digite um mês, de 1 a 12, para eu dizer aproximadamente
#a estação do ano"
#
#mes = gets.to_i 
#
#if mes > 9
#  puts "Primavera"
#elsif mes > 6
#  puts "Inverno"
#elsif mes > 3
#  puts "Outono"
#else
#  puts "Verão"
#end

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
end



