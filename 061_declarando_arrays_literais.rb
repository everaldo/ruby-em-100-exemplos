# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 060 - Declarando arrays literais
#
#
# Em Ruby, um array pode ser declarado literalmente utilizando-se
# dos símbolos []. Os elementos são separados por vírgulas
#
#
#


p [].class
p Array(nil).class


a = Array.new
a[0] = 1
a[1] = 2
a[2] = 3
a[3] = 4 # horrível


p a


p [1, 2, 3, 4]

