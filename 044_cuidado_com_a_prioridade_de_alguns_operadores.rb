# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 044 - Cuidado com a prioridade de alguns operadores
#
#
# Ruby possui os operadores: && e and
#                            || e or
#                            ! e not
#
# Mas esses operadores não são sinônimos, com mesma prioridade.
#
#
# Primeiramente, os operadores ! e not, por razões históricas (que desconheço)
# não podem ser utilizados com uma string, expressão regular ou intervalo (range)
# que estejam sozinhos numa condição. Isso gera um warning (na versão 2.3.1).
# Provavelmente, em versões anteriores, gerasse um erro de compilação
#
# Nunca usar (! ou not):  ! "string"
#                         ! /regexp/
#                         ! 1..10 # intervalo
#
#
# Os operadores and e or tem a mesma precedência
# O operador && tem precedência maior sobre o operador || e
# sobre o operador and
# 
#
#
# Lembrando que o comportamento desses operadores é "curto-circuito".
#
# O operador && retorna o segundo operando se o primeiro for verdadeiro
# O operador || retorna o primeiro operando, se ele for verdadeiro,
#                                           senão retorna o segundo
#
#
#
# Evite ao máximo usar and em atribuições, porque ele tem precedência
# menor que o operador de atribuição (=)
#
#
#

a = 1
b = 2

puts a && b # retorna 2
puts a || b # retorna 1
puts false || b # retorna 2


x = true and false

puts x # imprime true, o senso comum esperaria false


y = true && false

puts y # => imprime false, valor esperado


## Essa linha abaixo gera um erro de sintaxe, porque not
## não é um operador lógico real.
## É um operador de controle, para ser utilizado
## em expressões de comandos: if, unless, while etc.
#
##a = not false && true









