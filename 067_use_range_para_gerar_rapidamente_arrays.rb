# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 067 - Use Range para gerar rapidamente arrays
#
#
# Range implementa o método to_a, que o converte para o array.
#
# Evite uma digitação tediosa utilizando um range.
#
#
#


a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] # seus dias de sofrimento acabaram

p a

a = (1..10).to_a

p a



def sorteio_mega_sena
  (1..60).to_a.shuffle.first(6).sort
end

p sorteio_mega_sena
