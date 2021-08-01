# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 090 - Exponha suas variáveis com attribute accessors
#
# http://ruby-doc.org/core-2.1.1/Module.html#method-i-attr_accessor
# http://ruby-doc.org/core-2.1.1/Module.html#method-i-attr_reader
# http://ruby-doc.org/core-2.1.1/Module.html#method-i-attr_writer
#
#
# Ruby possui uma maneira elegante de se expor os "getters and setters", pra
# quem veio do Java.
#
#
# Com os métodos attr_accessor, attr_reader e attr_writer é possível criar
# rapidamente os métodos que expõem o acesso às variáveis de instância
#



class Vida
  attr_reader :sentido
  # não se assuste, é uma simples chamada de método equivale a
  # attr_reader(:sentido)
  #
  # Lembre-se que em Ruby, tudo é Objeto. Então uma classe também
  # é um objeto da classe Class. Você pode chamar métodos dentro
  # de classes


  # O método initialize é o construtor. Invocado automaticamente quando
  # chamamos Vida.new
  def initialize
    @sentido = 42

  end

end


puts Vida.new.sentido # imprime 42




class Carteira
  attr_accessor :dinheiro


  def initialize
    self.dinheiro = 99
    # o método dinheiro= foi criado pela "macro" attr_accessor
    # que também cirou o método dinheiro (reader)
    # accessor cria o reader e o writer
  end

  def gastar
    self.dinheiro -= 5
  end
end


carteira = Carteira.new

puts carteira.dinheiro #imprime 99
carteira.gastar

puts carteira.dinheiro #imprime 94


class Pessoa
  attr_writer :nome # cria o método nome=

  def to_s
    "Meu nome é #{@nome}"
  end
end

joao = Pessoa.new
joao.nome = 'João'

puts joao # Imprime "Meu nome é João"


#
# Os accessors nos poupam o tempo de definir
# manualmente os métodos.
#
# Com um único accessor é possível definir quantas
# variáveis desejar
#
# attr_accessor :var1, :var2, :var3, :var4, :var5....
#
#

class OldWays


  def var
    @var
  end

  def var=(value)
    @var=value
  end
end


old_ways = OldWays.new

old_ways.var = 100

puts old_ways.var






