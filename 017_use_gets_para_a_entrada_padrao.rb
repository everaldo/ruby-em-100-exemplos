# 03/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 017 - Use gets para a entrada padrão
#
#
# Até o momento não vimos nenhum comando para entrada de dados.
# Vimos somente o comando puts (saída) e atribuição de valores
# com o operador igual (=).
#
# Essa foi uma escolha proposital, pois geralmente, em Ruby,
# a entrada de dados acontece através de variáveis de ambiente,
# de argumentos do programa e da leitura de arquivos/base de dados.
#
# Apesar de ser uma ótima linguagem de scripting, raramente
# um programador Ruby fará a leitura através da entrada padrão.
#
# Em frameworks como Ruby on Rails, a entrada de dados da requisição
# se encontra na Hash params
#
# 
# De qualquer forma, embora não muito utilizada no dia-a-dia de um
# programador Web, a entrada de dados em Ruby é feita através
# 

puts "Digite um valor, seguido de enter:"
s = gets

puts "Você digitou: #{s}"


# Todos os valores de entrada são Strings


puts s.class


puts "Digite um número"

n = gets

puts n.class # Imprime String


# Para converter uma string para número inteiro utilize to_i
# Caso queira converter para número em ponto flutuante, use to_f


puts "Digite um número"

n = gets.to_i

puts n.class # Imprime Fixnum ou Bignum


# Todas as entradas são feitas como Strings
# É responsabilidade do programador realizar a conversão 
# e verificação de de tipos
#
#


