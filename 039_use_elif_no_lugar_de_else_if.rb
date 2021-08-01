# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 039 - Use elsif para ifs aninhados
#
#
# Caso deseje aninhar inúmeros ifs, use elsif no lugar de if dentro de else.
#
# Porque pra cada else if, é necessário ter um end
#
#


puts "Digite um mês, de 1 a 12, para eu dizer aproximadamente
a estação do ano"

mes = gets.to_i 

if mes > 9
  puts "Primavera"
elsif mes > 6
  puts "Inverno"
elsif mes > 3
  puts "Outono"
else
  puts "Verão"
end




#
# Num próximo exemplo veremos como usar switch/case
# para este tipo de seleção
#
#
