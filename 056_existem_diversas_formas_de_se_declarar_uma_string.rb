# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 056 - Existem diversas formas de se declarar uma string
#
#
# Como temos visto, Ruby é uma linguagem que prima pelo conforto
# do programador através da legibilidade do código.
#
#
# Por isso, existem diversas formas de se declarar uma string.
#
# Até o momento, vimos as strings com aspas duplas, que permitem interpolação
# (substituição de valores), heredocs e strings com aspas simples, apóstrofos,
# que não permitem interpolação.
#
# Muitas vezes, as strings contém aspas e fica muito incômodo fazer o escape
# desses caracteres. Para contornar esses problemas existem formas alternativas
# de se declarar uma string (todos são objetos da classe String).
#
#
# String de aspas simples fazem o mínimo de substituições possíveis.
# Elas substituem duas contra-barras por uma \\ => \ e permitem que
# uma aspas simples seja "escapada" com uma contrabarra \
# 


puts 'Substitui \\\\ por \\'
puts 'Permite escapar \' com \\'

#
# Existe uma notação alternativa, que permite substituir ' por %q
#

puts %q(essa é uma string)
puts %q se_nao_houver_espaços_em_branco_nem_precisa_dos_parenteses_mas_termine_com_ponto-e-vírgula ;
puts %q(pode haver parênteses dentro () )

#
# Você pode usar outros caracteres, tais como // e {} no lugar de parênteses
#
# A diferença é que eles permitem a substituição de valores, como strings
# de aspas duplas, que também pode ser expressa por %Q()
#

puts %q/usando uma barra agora/
puts %q{usando chaves}


puts "Agora é #{Time.now}"
puts %Q(Agora é #{Time.now})
puts %{Agora é #{Time.now}}
puts %<Agora é #{Time.now}>


puts "Strings " 'adjacentes ' "são concatenadas " 'automaticamente'



