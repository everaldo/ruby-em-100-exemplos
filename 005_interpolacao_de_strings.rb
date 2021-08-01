# 31/05/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 005 - Interpolação de Strings
#
#
# Nos exemplos anteriores, utilizamos interpolação de strings,
# sem explicá-la.
#
# A interpolação de strings (não funciona com strings de aspas simples)
# permite que objetos sejam automaticamente convertidos para strings
# sem a necessidade de invocar explicitamente operadores, como a concatenação
# e a conversão para strings
#
#


a = 0

puts '#{a}' # imprime #{a}, aspas simples

puts "#{a}" # imprime 0

puts "#{1 + 1}" # imprime 2. Use expressões dentro de #{}
