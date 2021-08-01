# 05/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 024 - Certifique-se de que um código sempre será executado
#       antes do programa terminar com  at_exit {}
#
# at_exit é muito parecido com END { }
#
# Uma das diferenças é que at_exit pode ser executado inúmeras vezes
# dentro de um loop, enquanto END é avaliado apenas 1 vez
#
# Além disso, at_exit invoca seus blocos na ordem reversa em que foram
# definidos
# 
#
# Fonte: http://stackoverflow.com/questions/11731341/differences-between-at-exit-and-end-upper-case-in-ruby
#
#



# Esse bloco será avaliado apenas 1 vez
5.times do
  END {

    puts "Por hoje é só, pessoal!"
  }
end

5.times do |i|
  at_exit {
    puts "Tchauzinho número #{i}"
  }
end 


puts "Alô mundo"


#
# Esses comandos são muito úteis, caso queira garantir que arquivos
# e conexões sejam fechados no término do programa, mesmo que de
# maneira inesperada.
#
#
#
