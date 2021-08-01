# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 088 - Inclua módulos nas classes
#
#
# O comando require permite carregar outros arquivos.
# Se você não especificar um caminho absoluto, Ruby
# procurará nos diretórios contidos na variável
# $LOAD_PATH.
#
# Vamos carregar o arquivo do exemplo anterior e 
# incluir os métodos na classe
#
#
#
#
#
#
#

#module MeuModulo
#  def self.metodo_do_modulo
#    puts "Oi, sou um método"
#  end
#
#  def MeuModulo.tambem_sou_metodo_do_modulo
#    puts "Eu também sou um método do módulo"
#  end
#end


require './087_um_pouco_sobre_modulos'

class UmaClasse
  include MeuModulo
end


#
# Módulo é um Ancestral de UmaClasse
#
p UmaClasse.ancestors


begin
  UmaClasse.metodo_do_modulo
rescue NoMethodError => ex
  puts "Somente os métodos de instância do módulo são inclusos"
end


#
# Você pode incluir os métodos de instância de um Módulo
# como métodos de classe de uma Classe utilizando
# extend
#

module OutroModulo

  def metodo2
    "Vou virar um método de classe"
  end

end

class OutraClasse
  extend OutroModulo
end

puts OutraClasse.metodo2

