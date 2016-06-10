# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 082 - O método each percorre todos os elementos de uma coleção
# 
#
# Estamos quase terminando nossos 100 exemplos.
#
# Nesta etapa final, veremos os principais métodos do Módulo Enumerable
#
# Para depois finalizarmos com o básico de Módulos e Classes
#
#
# Não confundir com a classe Enumerator.
# Aliás, a classe Enumerator inclui o Módulo Enumerable
#
# Outras classes, como Array e Hash, também incluem Enumerable.
#
# Afinal, o que é um Enumerável (Enumerable)?
#
# Qualquer classe que provê um método #each, e opcionalmente
# o "operador da nave espacial" <=> pode incluir o módulo Enumerable
# e ser considerado um enumerável.
#
# O operador <=>, conhecido como "spaceship operator", ou operador
# da nava espacial, porque o símbolo <=> se parece com uma nave
# (fã de Star Wars?) recebi um argumento "other" e compara com self.
#
# Se self for menor que other, retorna -1
# Se forem iguais, retorna 0
# Se for maior, retorna 1
#
# Esse operador, permite, "automagicamente" que um enumerável ganhe
# um método sort, que realiza ordenação da coleção. Isso aí, não é mais
# necessário ficar caçando na Wikipédia como se implementa o método da Bolha :D
#
# O Módulo Enumerable é um dos mais importantes, e vale a pena ler
# detalhadamente sua documentação:
#
# http://ruby-doc.org/core-2.3.1/Enumerable.html
#
#
# 
#
#
# Vamos criar uma classe, de exemplo, chamada Cidades, para ilustrar
# o uso de Enumerable
#


class Cidades
  include Enumerable # você deve incluir o módulo


  def each
    # vamos fingir que array não possui um método #each
    cidades = %w(Paris Roma Tóquio Nova\ York Brasília Buenos\ Aires)
    tamanho = cidades.count # count é um método de Enumerable, Array é Enumerable
    i = 0
    while i < tamanho
      yield cidades[i]
      i += 1
    end
  end
end

cidades = Cidades.new

puts cidades.select { |cidade| cidade.end_with?("a") }

## Imprime somente as cidades que terminam com a

puts cidades.include?("Brasília") # include? também é um método de Enumerable


#
# Vamos imprimir um Array tradicional com #each
#

a = (20..40).to_a


a.each { |n| puts n }


#
# Recapitulando: #each é um método que percorre cada elemento de uma coleção.
#
# Se uma classe implementa #each, então ela pode incluir o módulo Enumerable
# e se aproveitar de mais de 20 métodos que ela fornece, que atuam sobre coleções
#
#
#


