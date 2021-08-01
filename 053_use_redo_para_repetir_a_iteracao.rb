# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 053 - Use redo para repetir a iteração
#
#
# Continuando sobre comandos no estilo Go-To
#
#
# O comando redo serve para repetir a iteração, sem reavaliar
# a condição de parada de um loop ou sem pegar o próximo valor
# num loop
#
#
#


#
# Le e imprime 3 números entre 1 a 10
#

i = 0
while i < 3
  puts "Digite um numero de 1 a 10"
  n = gets.to_i
  redo unless (1..10).cover?(n) # Em breve veremos mais sobre Ranges / Intervalos
  puts n 
  i = i + 1
end

