# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 098 - Use a palavra super para invocar o método na classe pai
#       ou num ancestral
#
#
# No exemplo anterior, invocamos o método peso da Geladeira na classe
# GeladeiraTurbo utilizando a palavra-chave super.
#
#
# A palavra-chave super procura por um método com o mesmo nome na cadeia
# de ancestrais. Se ele não encontrar o método, lança a exceção
# NoMethodError
#
#
# Um módulo pode definir um método initialize, caso deseje
#


module UmModulo


  def initialize(*args)
    puts "Inicializando o Módulo a partir de #{self.class}"
    puts "Args=#{args}"
  end

end


class UmaClasse
  include UmModulo


  def initialize
    puts "Inicializando UmaClasse"
    super()
  end
end

class OutraClasse
  include UmModulo

  def initialize(*args)
    super
    puts "Inicializando Outra Classe"
  end
end


puts UmaClasse.new
puts OutraClasse.new(1, 2, 3, 4)


#
# Se você chamar super sem argumentos, os argumentos originais são repassados
# Se você chamar super() sem argumentos, mas com parênteses, nenhum argumento
# é repassado.
#
# Você também pode passar argumentos arbitrários para super
#
#

