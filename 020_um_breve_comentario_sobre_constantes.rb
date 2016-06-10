# 05/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 020 - Um breve comentário sobre constantes
#
# Antes de nos aprofundarmos sobre os tipos básicos de
# Objetos, as estruturas de controle e como o próprio
# sistema de Objetos funciona, vamos abordar rapidamente
# sobre constantes.
#
# Vimos que as variáveis globais começam com o caractere $.
# Todas as constantes começam com a primeira letra maiúscula.
#
# Geralmente, todas as letras de uma constante são maiúsculas.
# Mas, por convenção, em classes e Módulos somente a primeira
# letra de cada palavra é posta em maiúscula.
#
# Logo, vemos que Classes e Módulos são referenciados através
# de constantes. Algumas que já vimos até o momento:
# Object, String, Fixnum, Bignum, Symbol
#
# Em Ruby, quando o valor de uma constante é alterado, apenas
# gera um warning.
#
# Essa não é uma prática recomendável.
#
# O que não gera warning é alterar uma classe ou módulo. Uma
# tarefa relativamente comum.
#
#


# Lista todas as constantes presentes na classe Object
puts Object::constants


# Lista todas as constantes presentes na classe Math

puts Math::constants


# Imprime PI
puts Math::PI




# Veremos em exemplos posteriores como o operador de escopo ::
# é utilizado para 'navegar entre as constantes' definidas
# no escopo global e dentro das classes e módulos
#
#
