# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 078 - Lambdas verificam o número de parâmetros e return termina
# sua execução
#
#
#
# Para criar um Proc, além do código que define um bloco do-end
#
# é possível instanciar um novo objeto Proc, com Proc.new
#
# ou usar a notação lambda:
#
#
# lambda {  }
#
# Nota notação lambda Ruby >= 1.9:
#
# -> (args) { }
#
#
# Ambos são objetos do tipo Proc.
#
#
# A diferença é que um proc tradicional pode não se comportar
# corretamente quando encontra a palavra chave return.
#
# Ao invés de finalizar o bloco, é possível que ele tente sair
# do método que o invocou ou mesmo cause um erro por esse método
# não estar mais disponível.
#
# Além disso, um lambda garante que o número correto de argumentos
# foi passado.
#
#


o_dobro = Proc.new { |n| n * 2}
o_dobro_lambda = -> (n) { n * 2}


puts "classe de o_dobro=#{o_dobro.class}"
puts "classe de o_dobro_lambda=#{o_dobro_lambda.class}"



begin
  o_dobro.call
rescue => ex
  puts "Um proc normal não verifica os argumentos"
  puts ex.message
end

begin
  o_dobro_lambda.call
rescue ArgumentError => ex
  puts "Essa notação lambda verifica o número de argumentos"
  puts ex.message
end


#
# Comportamento do comando return
#


def com_proc
  p = Proc.new { return 10 }
  resultado = p.call
  "O método deveria retornar isso, mas esse código nunca será
  alcançado. O proc retornou #{resultado}"
end

def com_lambda
  p = -> { return 20 }
  resultado = p.call
  "O método retorna essa string e o lambda retornou #{resultado}"
end

puts com_proc

puts com_lambda

#
# Lambdas honram o comando return, terminando a execução do Proc (lambda)
#
# Dentro de um Proc, o retorno termina a execução da função. Ou pode causar
# erro se for chamado num momento em que a função não existe mais.
#
#

