# 05/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 026 -  Temos blocos de expressões com begin e end, mas
#        não confunda com blocos do/end
#
#
# Blocos de expressões são expressões por begin e end,
# com o único objetivo de agrupar expressões (comandos) e
# capturar exceções. O último comando executado é o retorno do
# bloco.
#
# Dentro desse bloco não é possível utilizar break/retry/redo/next etc.
#
#


x = begin
      y = 10
      z = 20
      y + z
    end

puts "x=#{x}"
puts "y=#{y}" # y continua definida, mesmo fora do bloco
puts "z=#{z}" # z continua definida, mesmo fora do bloco
