# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 091 - Uma classe também pode ter variáveis
#
#
# Embora seja relativamente raro, uma classe também pode ter variáveis.
# Chamamo-las de variáveis da classe e são denotadas pelo uso de duas
# arrobas @@.
#
#
#



class UmaClasse

  @@var = "Eu sou uma variável de classe, compartilhada entre todas
          as instâncias"

  def um_novo_mundo
    @@var = "Uma nova era está sendo implantada, agora #{object_id} manda"
  end


  # Esta é uma outra forma de definir métodos
  # da classe
  # Na verdade, são métodos da Eigenclass ou Singleton Class
  # uma classe anônima, invisível, onde os métodos de um objeto
  # são definidos.
  class << self

    def estado_do_mundo
      @@var
    end

  end
end


obj1 = UmaClasse.new
obj2 = UmaClasse.new

puts "Obj1=#{obj1.object_id}"
puts "Obj2=#{obj2.object_id}"

puts UmaClasse.estado_do_mundo


obj2.um_novo_mundo


puts UmaClasse.estado_do_mundo
