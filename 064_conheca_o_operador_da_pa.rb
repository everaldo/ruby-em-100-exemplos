# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 064 - Conheça o Operador da Pá
#
#
# Como vimos anteriormente, em Ruby, operadores são chamadas de métodos.
#
#
# A sobrecarga de operadores, através do polimorfismo, permite que cada
# classe adicione uma semântica especial aos operadores tradicionalmente
# utilizados para aritmética e lógica.
#
# Por exemplo, o operador +, em Arrays faz a concatenação:
#
# O operador -, remove elementos do primeiro array presentes no segundo
#
# O operador & faz intersecção
#
# O operador | faz união entre os elementos
#
#
# E o operador <<, que tradicionalmente é a operação shift em números inteiros
# insere um elemento no final do array e retorna o próprio array.
#
#
# Em Ruby, este operador tem um nome especial: ele é chamado de shovel operator
#
# shovel (pá)
#
#
# Como o método retorna o próprio array, sua chamada pode ser encadeada
#
#



a = []

p a << 1 << 2 << 3 << 4 << 5




