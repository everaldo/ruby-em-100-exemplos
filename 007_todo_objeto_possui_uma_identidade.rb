# 31/05/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 007 - Todo objeto possui uma identidade, que é seu endereço
#
#
# Objetos são armazenados em memória. Cada objeto em Ruby
# possui seu endereço, que pode ser acessado pelo método object_id.
#
#
# Fixnum, valores iguais compartilham o mesmo endereço (decisão de implementação).
# Bignum, valores iguais podem ter endereços distintos.
# O mesmo para Strings e todos os outros objetos.
# Existe apenas um objeto do tipo NilClass, TrueClass e FalseClass
#


puts 5.object_id
puts 5.object_id

cwb = "Curitiba"
curitiba = "Curitiba"

puts "Endereço de cwb=#{cwb.object_id}"
puts "Endereço de curitiba=#{curitiba.object_id}" # => nil


# Valores de cwb e curitiba são iguais, endereços são distintos
#



puts ObjectSpace.count_objects

# ObjectSpace#count_objects armazena o número total
# de objetos
#
#


cwb = :curitiba

curitiba = :curitiba


puts "Símbolos compartilham identidade" # => nil
puts "Endereço de cwb=#{cwb.object_id}"
puts "Endereço de curitiba=#{curitiba.object_id}" # => nil


# Símbolos são constantes strings, começam pelo caractere dois-pontos
#
#
#

