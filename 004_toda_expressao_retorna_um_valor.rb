# 31/05/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 004 - Toda Expressão Retorna um Valor
#
#
# Em Ruby, todas as expressões retornam um valor.
# Além das expressões aritméticas, também são expressões:
#
#
# Atribuição
# Chamada de método
# Definição de classes e Módulos
# Comandos de Controle e blocos (if, for, while etc.)
#


# O método puts retorna nil, que quando impresso não retorna nada
# O objeto nil é uma instância da classe NilClass


retorno = puts("Uma mensagem qualquer")

puts "O valor de retorno é '#{retorno}'"

puts retorno.inspect


# Atribuição múltipla


a = b = c = d = e = f = 0 # => 0

puts "a=#{a}"
puts "b=#{b}"
puts "c=#{c}"
puts "d=#{d}"
puts "e=#{e}"
puts "f=#{f}"



a = if true
      10
    else
      20
    end

puts "a agora vale 10, porque o comando if também retorna valores.
      O valor retornado é do último comando executado no bloco"


# Não é necessário usar ponto-e-vírgula em Ruby. A não ser que você queira
# definir uma classe ou método vazios numa mesma linha

uma_classe = class A ; end


puts uma_classe.inspect # => nil


# uma_classe é nulo, porque a classe não retornou nenhum valor em sua definição
