# 03/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 017 - Chomp nos livra do incômodo \n do gets
#
# http://ruby-doc.org/core-2.2.0/String.html#method-i-chomp
#
#
# Quando fazemos uma leitura da entrada padrão, o separador
# de linhas, por padrão \n, também é armazenado na String.
#
# Para removê-lo use o método chomp (que retorna uma nova string)
# ou chomp! que altera "in place".
#


puts "Digite uma string"
s = gets


p s

puts "Digite uma string"

s = gets.chomp

p s


## Alternativamente, poderia ter feito
## s = gets
## s.chomp!
## 
