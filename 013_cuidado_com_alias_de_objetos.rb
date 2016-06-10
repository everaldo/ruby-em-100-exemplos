# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 013 - Cuidado com Alias de Objetos
#
#
# Em linguagens orientadas a objetos, tais como Ruby, Python
# e Java, deve-se tomar cuidado com alias ou aliasing de
# objetos.
#
# Quando você faz uma cópia por atribuição ou argumento de
# método, deve-se estar ciente se o valor é realmente copiado
# para um novo objeto ou se a nova variável é apenas um alias
# de um objeto já existente.
#
#
# Lembre-se, uma variável é apenas uma referência que aponta
# para o endereço do objeto.
#
#


def um_metodo(y)
  y = 20
end


x = 10
um_metodo(x)


# Imprime 10, porque y recebeu o valor que x referenciava,
# não o endereço real de x
puts x



def outro_metodo(s)
  s.upcase!
end


abacaxi = "abacaxi"

outro_metodo(abacaxi)


# Imprime ABACAXI, pois o método upcase! modifica o receiver
# No caso, o receiver s, aponta para o mesmo valor que
# abacaxi aponta
#
#
puts abacaxi


laranja = "laranja"

outro_metodo(laranja.clone)

# Imprime laranja, pois invocamos o método clone, que criou
# um outro objeto para ser passado como argumento
puts laranja # => nil

