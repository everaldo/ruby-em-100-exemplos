# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 073 - Uma pequena introdução a blocos
#
#
# Blocos são um dos recursos mais poderosos da linguagem Ruby.
#
#
# Até o presente momento, tentamos ao máximo evitar usá-los para
# aproveitar o conhecimento que temos de outras linguagens de programação
# no aprendizado das estruturas de controle em Ruby.
#
#
# No entanto, no dia-a-dia, blocos estão presentes em praticamente todos os
# programas escritos em Ruby.
#
#
# Blocos estão ligados ao conceito de Fechamento (Closure) e também aos
# objetos do tipo Proc.
#
# https://en.wikipedia.org/wiki/Closure_(computer_programming)
#
#
# Closure está relacionado com escopo léxico e com funções de primeira ordem.
#
# Isso significa que um fechamento é capaz de armazenar referências a variáveis
# que foram definidas fora da função/bloco e também que uma função pode ser
# passada como parâmetro de outra função.
#
# 
# Para termos ideia, apenas na versão 8 do Java que foram introduzidos mecanismos
# de Closure (lambdas).
#
#
# Javascript é uma linguagem onde esse recurso é muito utilizado.
# 
#
#
# Vamos começar pela definição de bloco:
#
#
# Em Ruby, um bloco (não confundir com os blocos de comando begin/end)
# é um conjunto de comandos e expressões entre chaves {} ou entre as palavras-chave
# do e end.
#
# O bloco pode ter uma lista de argumentos, entre barras verticais.
#
#
# Um bloco só pode aparecer imediatamente após a invocação de uma função.
#
#
# O início do bloco deve estar na mesma "linha lógica" da invocação do método
#
#
# invocação do método do |a1, a2,....|
# end
#
# ou
#
# invocação do método { |a1, a2, .....|
#
# }
#
#
# Chaves e do-end não são equivalentes.
# Chaves tem maior precedência do que do-end.
#
# Isso pode causar algumas confusões, principalmente se a invocação do método
# não estiver protegida por parênteses.
#
#
# Em regra geral, utiliza-se chaves para chamadas de métodos com blocos curtos, somente uma linha
# e do-end para blocos longos, que ocupam mais de uma linha.
#
#
# Mas veremos um exemplo que mostra a diferença na precedência dos operadores.
#
#
#
# Um bloco é um fechamento (closure). Ele é capaz de lembrar o contexto
# (em Ruby, também chamado de binding) em que foi definido e usa este contexto
# quadno for invocado. O contexto inclui o valor de self, constantes, variáveis locais,
# variáveis de classe e quaisquer outros blocos que tenham sido capturados (afinal,
# podemos ter blocos dentro de blocos)
#
#
# Não vamos complicar muito.
#
# Comecemos com o fato de que a palavra-chave yield é utilizada para invocar
# o bloco, dentro do método que o capturou
#


def cumprimenta
  yield
end


cumprimenta do
  puts "Alô Mundo"
end

# O que acontece neste exemplo?
# Invocamos o método cumprimenta, que não recebe nenhum argumento normal,
# mas captura o bloco do/end como um argumento.
#
# Dentro do método cumprimenta a palavra-chave yield passa o controle
# da execução para o bloco capturado. Este bloco possui apenas 1 comando,
# que imprime alô mundo
#
#
#








