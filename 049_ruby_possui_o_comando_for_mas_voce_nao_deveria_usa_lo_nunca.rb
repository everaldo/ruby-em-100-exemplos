# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 049 - Ruby possui o comando for, mas você não deveria usá-lo nunca
#
#
# O comando mais tradicional de iteração (loop), na maioria das linguagens
# de programação, é o comando for.
#
# Porém, em Ruby, procuramos priorizar a chamada de métodos.
#
# De fato, Ruby traduzirá um comando for para um método equivalente #each
#
#
# Praticamente ninguém na comunidade Ruby utiliza o comando for.
# Se você utilizá-lo, logo vão perceber que você é um forasteiro.
#
# A não ser que você queira ser uma máquina rebelde, daquelas que não aceitam
# fazer sanduíche ;)
#



for i in 1..10
  puts i
end
