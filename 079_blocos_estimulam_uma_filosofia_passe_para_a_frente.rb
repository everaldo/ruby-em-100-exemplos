# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 079 - Blocos estimulam uma filosofia "passe para a frente"
# 
#
# Na programação estrutura e imperativa, estamos acostumados
# a invocar uma função, pegar o retorno da função e aplicar
# outro comando.
#
#
# Em Ruby, blocos (Procs) estimulam uma filosofia "passe para a frente".
#
#
# Você invoca um método, mesmo que ele retorne valores, costuma-se retornar
# os valores num bloco, que por sua vez podem ter outro bloco aplicado e
# assim por diante.
#
#
# Imagine uma linha de montagem de uma fábrica: sempre pra frente.
#
# O produto passa por uma esteira e a cada máquina que ele encontra é 
# transformado um pouco, mas o fluxo é sempre em diante.
#
#
#
#
# Vamos listar os números de 1 a 1000 que são divisíveis por 2, 3, 4 e 5
# simultaneamente



puts (1..1000).select { |n| n.modulo(2).zero? }.
               select { |n| n.modulo(3).zero? }.
               select { |n| n.modulo(4).zero? }.
               select { |n| n.modulo(5).zero? }


# ou


x = (1..1000).select do |n|
  [2, 3, 4, 5].map do |div|
    n.modulo(div).zero?
  end.all?
end.to_a

puts x


#
# Tivemos que dividir em duas linhas por causa que não
# colocamos parênteses no puts e pela precedência de operadores
#
# Temos que usar {} para que funcione num único comando
#
#

puts (1..1000).select { |n|
  [2, 3, 4, 5].map do |div|
    n.modulo(div).zero?
  end.all?
}



