# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 094 - Uma classe pode ter outra classe dentro dela
#
#
# Constantes (Classes e Módulos) podem ser utilizadas para organizar
# o escopo de objetos.
#
# Basta lembrarmos do Módulo Math, que possui a constante PI.
#
#
# Analogamente, podemos definir outros módulos e classes dentro deles.
#
#
#



class A
  class B
    def self.metodo_b
      "a classe A é muito ciumenta. Sou acessível somente através dela"
    end
  end
end

class B
  def self.metodo_b
    "Sou uma classe totalmente independente. Estou no escopo global"
  end
end


#
# Utilize o operador :: para navegar entre escopos
#
#

puts A::B.metodo_b


puts B.metodo_b



#
# Lembre-se que quando definimos um método com def self.nome_metodo
# este método pertence à classe e não às instâncias
#
# Basta lembrar que o valor de self, naquele momento, é a própria
# Classe e não a instância da classe.
#
#
