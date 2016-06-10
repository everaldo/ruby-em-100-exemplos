# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 054 - Use o método loop para loops infinitos ou não, com estilo
#
#
# Encerrando o tópico sobre laços de repetição (mentira, ainda vamos
# falar muito sobre "collection closures", os laços de repetição próprios
# dos objetos que representam uma coleção, em Ruby) vamos falar sobre
# o método loop.
#
# Loop não é uma construção da linguagem, é um método da classe Object.
#
#
# Loop permite criar um loop infinito com muito mais elegância que em outras
# linguagens, como C, onde se usa:
#
#   for(;;){}
#
#   ou
#
#   while(true){}
#
#   ou
#
#   while(1)
#
#
#
# Para terminar um loop, pode-se usar o comando break ou mesmo a exceção
# StopIteration
#
# http://ruby-doc.org/core-2.2.0/StopIteration.html
#
#
# O método loop captura silenciosamente essa exceção, que pode ser lançada
# manualmente ou por um iterador externo (classe Enumerator, por exemplo)
#
#

i = 0
loop do
 puts i
 i = i + 1
 break if i >= 10
end


numeros = [1, 2, 4, 8, 16].to_enum

loop do
  puts numeros.next
end

#
# Esse loop para automaticamente após imprimir o 16,
# pois quando o iterador se esgota, ao invocar o método
# next, ele invoca a Exceção StopIteration
#
#
# http://ruby-doc.org/core-2.2.0/Enumerator.html#method-i-next
#














