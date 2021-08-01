# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 048 - Use case when para testar a classe de seus objetos
#
#
# Este exemplo, retirado do livro Programming Ruby 1.9
# página 137, tem somente fins didáticos.
#
# Veremos que, as características de Ruby de polimorfismo
# e Duck Typing permitem que evitemos construções com
# case / when, invocando diretamente os métodos
#
#
# No exemplo abaixo, veremos que toda classe em Ruby
# é uma instância da classe Class, que implementa
# o operador === comparando se seu argumento é uma
# instância da sua classe.
#
# Dessa forma, podemos usar case / when para descobrir
# a classe de um objeto em tempo de execução.
#
# Relembrando: É mais fácil resolver com polimorfismo
#
#
#
#



def metodo_polemico(maquina)
  case maquina
  when MaquinaRebelde
    maquina.coloca_de_castigo
  when MaquinaBoazinha
    maquina.faça_um_sanduíche
  end
end


class MaquinaRebelde

  def coloca_de_castigo
    puts "Essa máquina nunca me obedece"
  end
end

class MaquinaBoazinha

  def faça_um_sanduíche
    puts "Sanduíche de atum"
  end

end


maquina1 = MaquinaRebelde.new
maquina2 = MaquinaBoazinha.new

metodo_polemico(maquina1) # => nil
metodo_polemico(maquina2)

# >> Essa máquina nunca me obedece
# >> Sanduíche de atum


# Observações:
#  1. Acho que estou assistindo muitos filmes de ficção com robôs
#  2. Já vimos muitas estruturas de controle. Estamos acabando,
#  mas já está se tornando inevitável apresentar classes e métodos.
#  Paciência, logo veremos as explicações detalhadas de como criar
#  uma classe, um método de instância, uma nova instância etc.
#
#  É muito importante conhecer os detalhes das estruturas de controle
#  do Ruby. Pois elas são muito ricas, oferecendo grande expressividade
#  sem perda de legibilidade.
#
#  Lembre-se que, tirando as estruturas de controle, todo o restante
#  são objetos
#
#








