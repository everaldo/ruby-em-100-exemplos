# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 099 - Use o método defined? para descobrir o quê uma expressão significa
#
# A natureza dinâmica de Ruby não permite saber, em tempo de execução
# o que um objeto representa, ou mesmo se ele está definido.
#
#
# O método defined? resolve este problema.
#
#
# Se a expressão não está definida ou não puder ser resolvida retorna nil.
#
# Senão, retorna uma String que explica o que o objeto representa
#
#


puts defined? obj
obj = 1

puts defined? obj # variável local

@a = 1

obj = @a


puts defined? obj # ainda continua variável local


defined? obj = 2 # agora retorna atribuição. Apesar de obj continuar sendo
                 # variável local


class A
end

defined? A # retorna constant


a = A.new

puts defined? a.metodo_estiloso # retorna nil # =>

# vamos definir o método no objeto


a.define_singleton_method :metodo_estiloso do
  puts "Sou estiloso"
end


puts defined? a.metodo_estiloso # agora retorna a string "method"


