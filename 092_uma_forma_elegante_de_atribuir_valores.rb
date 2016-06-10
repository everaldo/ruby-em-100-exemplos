# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 092 - Uma forma elegante de atribuir valores
#
#
# Muitas vezes, queremos consultar um método para obter um valor.
# E, somente na primeira vez, se não houver nenhum valor, queremos
# retornar um valor default.
#
# Em Ruby, existe uma maneira muito elegante de fazer isso,
# utilizando-se o operador ||=
#
# @a ||= b
#
# é o mesmo que:
#
# @a || @a = b
#
#
# Isso significa que:
#
# #1 Se @a possui um valor, ele é retornado por curto circuito
#
# #2 Se @a não possui valor (ou é falso, cuidado com isso), então
# o || vai executar o lado direito @a = b. Que vai atribuir o valor de b
# em @a e ao mesmo tempo retornar esse valor, porque em Ruby todos os comandos
# são expressões e retornam valores
#
#
#


class Visitantes


  def contador
    @contador ||= 0
  end

  def conta_visitas
    @contador += 1
  end

end

visitantes = Visitantes.new

puts visitantes.contador # imprime 0

visitantes.conta_visitas


puts visitantes.contador # imprime 1 

