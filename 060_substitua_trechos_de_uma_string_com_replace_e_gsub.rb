# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 060 - Substitua trechos de uma string com replace e gsub
#
#
# http://ruby-doc.org/core-2.2.0/String.html#method-i-replace
# http://ruby-doc.org/core-2.2.0/String.html#method-i-gsub
# http://ruby-doc.org/core-2.2.0/String.html#method-i-gsub-21
#
#
# Replace substitui completamente uma string por outra
#
# gsub e gsub!, respectivamente, retornam uma cópia ou alteram
# in-place (altera o valor de self, lembre-se que métodos com !
# indicam isso, em Ruby). 
#
#
#


puts "Python".replace("Ruby")


puts "Sua senha é: 1234".gsub(/\d/,'*')
