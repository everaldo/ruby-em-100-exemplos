# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 058 - Use o método split para separar uma string
#
# http://ruby-doc.org/core-2.2.0/String.html#method-i-split
#
#
# O método split separa uma string e retorna um array com os componentes
# encontrados.
#
# Confira a documentação para opções mais avançadas, tais como, expressão
# regular como parâmetro e limite nos resultados
#
#



str = "Cada; registro ; separado por ; ponto-e-vírgula ; "


puts str.split(';').inspect
