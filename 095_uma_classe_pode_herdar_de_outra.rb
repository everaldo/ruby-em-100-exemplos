# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 095 - Uma classe pode herdar de outra
#
#
# Todas as classes herdam automaticamente da classe Object,
# que por sua vez, a partir do Ruby 1.9, herda de BasicObject.
#
#
# Quando uma classe herda de outra, ela ganha acesso a todos
# os seus métodos públicos e protegidos.
#
# Veremos que uma classe herdeira não pode acessar métodos
# privados, devido ao princípio do encapsulamento.
#
# Além disso, uma classe pode sobrescrever métodos previamente
# definidos (Polimorfismo).
#
#


class Animal

  def cumprimenta
    "UGH"
  end
end

class Humano < Animal

  def cumprimenta
    "Olá, humano"
  end
end

class Cachorro < Animal

  def cumprimenta
    "AUUU AUUU"
  end
end

puts Animal.new.cumprimenta
puts Humano.new.cumprimenta
puts Cachorro.new.cumprimenta


puts Humano.new.is_a?(Animal)

#
# Retorna True, porque Humano herda de Animal
#

