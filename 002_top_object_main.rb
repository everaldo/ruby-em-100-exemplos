# 31/05/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 002 - Top Object Main
#
# Na linguagem Ruby, um conceito muito importante é o de self.
# Semelhante ao self do Python e ao this do Java e Javascript,
# o self do Ruby indica o "receiver". Receiver é o objeto que
# recebe uma chamada de método.
#
# Dessa forma, quando executamos puts, no exemplo 001, esse
# método está sendo executado no receiver (self).
#
# Num script, self aponta inicialmente para um objeto especial
# chamado (main). Não confunda com o método main de linguagens
# como C e Java. Ruby não possui um método main e se você invocar
# uma variável main, sem tê-la declarado irá lançar um erro, de
# variável não declarada.
#
# O objeto main (top-Level Object) é uma instância da classe Object.
#
# A classe Object inclui o módulo Kernel, que inclui o módulo IO,
# que por sua vez define o método puts
#
# http://ruby-doc.org/core-2.3.1/Object.html
# http://ruby-doc.org/core-2.3.1/Kernel.html
# http://ruby-doc.org/core-2.3.1/IO.html#method-i-puts
#
# A classe Object não é a raiz da hierarquia de objetos. A partir do
# Ruby 1.9, Object herda da classe BasicObject
#
# http://ruby-doc.org/core-2.3.1/BasicObject.html
#


puts "Fora de classes e módulos self é #{self}"

puts "A classe do Top Level Object é #{self.class}"


# Dentro de um método definido fora de Módulos ou classes,
# self continua sendo main


def um_metodo
  puts "Dentro de um método definido em Top-Level Object self é #{self}"
end

um_metodo


module UmModulo

  def self.um_metodo
    puts "Dentro de um método de um módulo self é #{self}"
  end


end


UmModulo.um_metodo

#
# Dentro de um módulo, self será o nome do Módulo
# Se o Módulo for incluído dentro de uma classe,
# self será a classe que o incluiu
#
#
#
#

class UmaClasse

  def self.um_metodo
    puts "Dentro de um método definido numa classe self é #{self}"
  end
end


UmaClasse.um_metodo

#
# Dentro de uma classe, self será o nome da Classe
#
#


#
# Method Dispatch
#
# Quando um método é invocado, se ele não for encontrado em self,
# Ruby automaticamente procura na hierarquia de classes
#
# Para descobrir essa hierarquia, use o método ancestors da
# classe do objeto
#
#

puts "Os ancestrais de Top-Level Object são #{self.class.ancestors}"
puts "Os anscestrais de um módulo são #{UmModulo.class.ancestors}"
puts "Os ancestrais de uma classe são #{UmaClasse.class.ancestors}"


#
# Dessa forma, entendemos como o método puts é invocado de acordo
# com self e a hierarquia de Objetos. Mesmo ele não estando presente
# num módulo ou classe, ele está presente em seus ancestrais
#


