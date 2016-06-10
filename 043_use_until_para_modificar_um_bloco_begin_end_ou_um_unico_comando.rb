# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 043 - Use until para modificar um bloco begin/end
#       ou um único comando
#
# Em Ruby, você pode construir uma estrutura semelhante ao
# repeat until da linguagem Pascal, utilizando o comando
# until para modificar o comportamento de um bloco begin/end.
#
#
# Isso significa que o loop será executado no mínimo 1 vez, sempre.
#
#
# O bloco deixa de executar quando a condição se torna verdadeira
#
# Em Ruby, também é possível utilizar until com a notação
# "pós-fixa" (eu não consigo lembrar se eu adaptei este termo livremente)
# como a do if/unless em guard clauses. Ou seja, until sem blocos:
#
# <comando> until <condicao> # será executado enquanto condição for falsa
#
#
# Lembre-se que a condição é avaliada antes do comando ser executado
#
#

begin
  puts "Digite uma opção, 0 (zero) para sair"
  opcao = gets.to_i
  # processamento
end until opcao == 0 # Aqui utilizamos o operador igual


puts "Vamos contar até 999"
i = 0
i += 1 until i = 999


puts "i=#{i}"
