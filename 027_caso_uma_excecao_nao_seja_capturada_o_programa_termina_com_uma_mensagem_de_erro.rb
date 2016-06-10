# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 027 - Caso uma Exceção não seja capturada, o programa termina
# com uma mensagem



# Vamos invocar um método que não foi definido

o = Object.new
o.faça_um_sanduíche # Lança a Exceção NoMethodError

puts "Obrigado, estava uma delícia" # Nunca será impresso
