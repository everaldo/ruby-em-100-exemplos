# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 093 - Você pode abrir uma classe e adicionar novos métodos
#
#
# Esta técnica é conhecida como Monkey Patching.
#
# Pode ser muito útil, mas também perigosa porque o novo método
# criado pode "vazar" para outros contextos, modificando o comportamento
# de outros objetos de forma inesperada.
#
# A partir do Ruby 2.1, uma nova técnica foi introduzida, chamada
# Refinements, que permite limitar o escopo dos novos métodos
#
# http://ruby-doc.org/core-2.1.1/doc/syntax/refinements_rdoc.html
#
#
#
# Vamos fazer algumas traquinagens



class Fixnum

  def sentido_da_vida?
    self == 42
  end

end

#
# Abrimos a classe Fixnum, padrão do Ruby, e adicionamos um novo
# método sentido_da_vida? disponível para todos os objetos da classe
#


puts 42.sentido_da_vida?
puts 10.sentido_da_vida?


#
#
# Vamos estragar um método já existente
#
#

puts "Alô mundo".upcase

class String

  def upcase
    "VOCÊ FOI HACKEADO"
  end
end



puts "Alô mundo".upcase 


#
#
# Nem tudo precisa ser traquinagem.
# Às vezes, voce só quer definir os métodos aos poucos
#
#

class Preguicosa

  def metodo_a
    puts "metodo a"
  end
end


class Preguicosa

  def metodo_b
    puts "metodo b"
  end
end

class Preguicosa

  def metodo_a
    "resolvi sobrescrever a"
  end
end

puts Preguicosa.new.metodo_a
puts Preguicosa.new.metodo_b 




