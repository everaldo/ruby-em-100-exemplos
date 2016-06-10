# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 063 - Uma notação simples para arrays de strings
#
#
# Quando desejar criar um array de Strings, e se elas não contiverem
# espaços nas palavras, use a notação %w() para criar rapidamente esses arrays.
# Parênteses pode ser substituído por outro símbolo, como {}
#
#
#



array_chato = ["Cuba", "Paris", "Roma", "Nova York"]
array_errado = %w(Cuba Paris Roma Nova York)
array_certo = %w(Cuba Paris Roma Nova\ York)


# Em Ruby, você digita menos :D
# Chega de ficar abrindo e fechando aspas, toda hora


p array_chato
p array_errado
p array_certo




# A partir do Ruby 2.0, é possível criar arrays de símbolos com %i




p %i(a b c d e)
