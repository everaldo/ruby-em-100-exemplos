# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 052 - Use next para pular para o final do loop,
#       seguindo para a próxima iteração
#
#
# Continuando sobre comandos no estilo Go-To
#
#
# O comando next, serve para pular para o final do loop,
# seguindo para a próxima iteração
#
# Em Ruby, next também pode retornar valores!!!
#
#
# Este retorno só faz sentido se usado dentro de um bloco
# (nós não vimos blocos ainda). Dentro de loops o valor é ignorado
#
#
#
#

#
# Imprime números de 1 a 10, menos o 7, por causa do jogo Brasil x Alemanha
#
#

i = 1
while i <= 10
  next i = i + 1 if i == 7
  puts i
  i += 1
end


#
# Se não tivéssemos colocado i = i + 1 dentro do next, seria um loop infinito.
# Note que não retornamos valores, mas usamos a capacidade de executar uma
# expressão.
#
# Esse exemplo seria muito mais legível com um if.
# Usamos next somente para ilustrar.
#
#
# Mas em geral ele é utilizado assim: processando uma coleção de valores,
# deseja-se ignorar determinado valor e partir para o próximo
