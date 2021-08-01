# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 035 - Lance suas próprias exceções com raise ou fail
#
#
# raise e fail são sinônimos.
#
# O programador pode lançar suas próprias exceções de 3 maneiras
#
#
# raise
# raise string
# raise thing <, string < , stack trace>>
#
#
# A primeira forma, relança a exceção que está contida na variável $!,
# ou cria uma nova exceção do tipo RuntimeError se $! é nula.
#
#
# A segunda forma cria uma nova exceção do tipo RuntimeError e seta
# a string como sua mensagem.
#
#
# A terceira forma cria uma nova exceção do tipo thing, invocando
# um método (factory method) chamado exception deste objeto (thing).
# Dessa forma, thing pode ser o nome de uma classe de Erro ou uma instância
# de erro. Os parâmetros opcionais string e stack trace são passados
# ao método exception.
#
#
# Lembrando que, sempre que uma exceção é lançada, ela é armazenada na
# variável global $!
#
#



# Vamos invocar um método que não foi definido

def metodo_polemico(maquina)
  raise "Não sou capaz de fazer um sanduíche" unless maquina.
    respond_to?(:faça_um_sanduíche)
  maquina.faça_um_sanduíche
end


begin
  maquina = Object.new
  metodo_polemico(maquina)
rescue => e
  puts e
end



#
# Esse exemplo demonstra como podemos reorganizar melhor o código,
# separando o tratamento da exceção do local onde ela ocorre
#
#
#
