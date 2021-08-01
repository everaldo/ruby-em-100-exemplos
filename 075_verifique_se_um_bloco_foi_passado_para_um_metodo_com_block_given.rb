# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 075 - Verifique se um bloco foi passado para um método com block_given?
#
#
# Se você invocar um método que espera um bloco, sem passá-lo,
# receberá um erro: LocalJumpError.
#
#
# Para evitar isso, utilize o método block_given?, que retorna verdadeiro
# quando um bloco foi capturado
#
#
#


def metodo_desprevenido
  yield
end


begin
  metodo_desprevenido
rescue LocalJumpError
  puts "Te salvei desta vez"
end


def metodo_prevenido
  yield if block_given?
end


metodo_prevenido


metodo_prevenido do
  puts "Incólume"
end
