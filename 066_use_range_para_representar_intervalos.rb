# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 066 - Use Range para representar intervalos
#
#
# Comentamos rapidamente em outros exemplos sobre a Classe Range,
# que representa intervalos.
#
#
# Existem dois tipos de intervalos: aberto e fechado.
#
# Um intervalo fechado é representado pelos caracteres .. (ponto-ponto)
# Um intervalo aberto é representado pelos caracteres ... (ponto-ponto-ponto)
#
# Quando usar a notação literal, você deve proteger o range com parênteses
# caso queira invocar um método:
#
# (1..10).size
# 
#
# Já vimos que um range pode ser utilizado num comando for:
#
# for i in 1..10
#
#


puts (1..10) == Range.new(1, 10)
puts (1..10) == Range.new(1, 10, false)
puts (1...10) == Range.new(1, 10, true) # o terceiro parâmetro diz se o intervalo é aberto



