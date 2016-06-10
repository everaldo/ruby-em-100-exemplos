# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 037 - Use ponto de interrogação e dois pontos como operador
# ternário
#
# Ruby possui o operador if ternário, que permite escrever
# em uma única linha uma expressão condicional
#
# <cond> ? <executa_se_verdadeiro> : <executa_se_falso>
#
# Esse operador é muito comum em outras linguagens,
# como C e Java.
#



puts "Digite 0 para mão esquerda, qualquer coisa pra mão direita"
x = gets.to_i
puts x == 0 ? "Ganhou um doce" : "Não ganhou nada"


