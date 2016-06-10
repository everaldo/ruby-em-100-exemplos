# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 010 - O último comando é o valor de retorno
#
# Além dos parênteses opcionais e das expressões
# aritméticas que, em verdade, são chamadas de métodos,
# Ruby provê mais "açúcar sintático" (syntax sugar).
#
# O último comando de um bloco ou método é o valor
# de retorno. Esta funcionalidade é coerente com o
# princípio de que "toda expressão retorna um valor".
# Logo, blocos também são expressões.
#
#
# Caso deseje, pode explicitar um retorno com a palavra chave
# return
#
# Se a expressão for vazia, o valor retornado será nil
#
#


def alo_mundo
  "Alô mundo"
end

puts alo_mundo # => nil


def metodo_vazio
end

puts "Método vazio=#{metodo_vazio}" # => nil



x = if true
      1
    else
      2
    end


# Imprime 1 # =>
 puts x


## Imprime números de 0 a 9
## Depois x, vale 10, pois é o retorno do bloco
x = 10.times { |i| puts i }


puts "x vale 10, x=#{x}" # => nil
