# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 038 - Unless é o mesmo que if not
#
#
# A sintaxe do Ruby torna a leitura do código agradável
# e o mais natural à linguagem Humana
#
# Unless (a menos que, a não ser que, salvo se, exceto quando)
# é o mesmo que if not
#
#
# Não recomenda-se expressar na negativa. Na maioria das vezes
# é confuso. Mas em outros casos, é necessário e torna mais claro
# o entendimento. Como no caso do início desde parágrafo, onde enfatizamos
# que queremos nos expressar na negativa :P
#


puts "Digite um número par"
x = gets.to_i
unless x.even?
  puts "Eu falei que era um número par, teimoso"
else
  puts "Agora faça um sanduíche"
end


# É mais claro dizer "a menos que seja par"
# do que
# "se não for ímpar"
#
# Ou se utilizasse um if sem not, então o código perderia
# o protagonismo e iria parar no bloco do else
#
#
#
