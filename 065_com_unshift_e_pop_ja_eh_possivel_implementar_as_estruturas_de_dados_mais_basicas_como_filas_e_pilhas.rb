# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 065 - Com unshift e pop já é possível implementar as estruturas
# de dados mais básicas, como filas e pilhas
#
#
# No último exemplo, vimos como inserir no final de um Array
# com o operador shovel <<.
#
#
# Neste exemplo, veremos que o operador unshift é utilizado para
# inserir no início de um array.
#
# E o operador pop, simétrico ao <<, remove o último elemento.
#
#
# O operador simétrico ao unshift é o shift.
#
#
# Com essas 4 operações, já é possível implementar Filas e Pilhas,
# tipos abstratos de dados elementares
#
#
#
# É muito comum, em Ruby, quando se está escrevendo uma biblioteca,
# adicionar um diretório lib/ ao LOAD_PATH, uma lista (array) de 
# diretórios onde o Ruby procura automaticamente por arquivos a
# serem carregados com o comando require
#
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#
#
# Para isso, usamos unshift, conforme ilustrado acima
#
#


a = [2, 3, 6]

p a

a.unshift 1

p a

a.pop # remove o 6


a.push 4

p a

while e = a.shift
  p e
end




