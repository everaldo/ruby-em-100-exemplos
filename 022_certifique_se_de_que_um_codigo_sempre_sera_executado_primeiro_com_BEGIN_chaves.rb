# 05/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 022 - Certifique-se de que um código sempre será executado
#       primeiro com BEGIN {}
#
#


puts "Alô mundo"



BEGIN {

  puts "Antes de cumprimentar todos, Faça-se a Luz"


}

BEGIN {

  puts "É possível ter inúmeros blocos BEGIN, eles serão
        executados em ordem"

}
