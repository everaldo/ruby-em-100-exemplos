# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 042 - Use while para modificar um bloco begin/end
#       ou um único comando
#
#
# Em Ruby, você pode construir uma estrutura semelhante ao
# do { } while de linguagens como C e Java, utilizando o comando
# while para modificar o comportamento de um bloco begin/end.
#
#
# Isso significa que o loop será executado no mínimo 1 vez, sempre.
#
#
# O bloco será executado enquanto a condição for verdadeira
#
#
# Em Ruby, também é possível utilizar while com a notação
# "pós-fixa" (eu não consigo lembrar se eu adaptei este termo livremente)
# como a do if/unless em guard clauses. Ou seja, while sem blocos:
#
# <comando> while <condicao> # será executado enquanto condição for verdadeira
#
# Lembre-se que a condição é avaliada antes do comando ser executado
#
#
#

begin
  puts "Digite uma opção, 0 (zero) para sair"
  opcao = gets.to_i
  # processamento
end while opcao != 0


puts "Vamos contar até 999"
i = 0
i += 1 while i < 999


puts "i=#{i}"
