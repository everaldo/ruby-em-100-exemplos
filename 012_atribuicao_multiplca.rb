# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 012 - Atribuição múltipla
#
# Ruby permite que inúmeras variáveis sejam atribuídas
# com um único operador de atribuição (=)
#
# Use o operador igual para separar os valores
#


x, y = 2, 3


# Imprime 2 e 3
puts x, y


# Você pode até mesmo trocar os valores, com um único comando
# e sem usar variáveis auxiliares

# Em C:
#
# aux = x;
# x = y;
# y = aux;
#

x, y = y, x


# Imprime 3 e 2, agora
puts x, y



a, b = 10 


puts a, b

# Agora b é nulo
puts "#{b.nil?}"


c, d = 5, 6, 7 


# Não gera nenhum erro. O valor 7 é descartado
puts c, d
