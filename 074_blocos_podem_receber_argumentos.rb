# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 074 - Blocos podem receber argumentos
#
#
# Blocos podem receber argumentos, eles são passados
# quando da chamada de yield
#
#
# Eles também podem retornar valores.
# O último comando (expressão) do bloco
# é o seu valor de retorno
#
#


def numero_pi
  retorno = yield Math::PI
end



retorno_do_metodo = numero_pi do |pi|
  puts pi
  42 # o sentido da vida # =>
end


puts retorno_do_metodo



# Nada prático este exemplo :(
#
