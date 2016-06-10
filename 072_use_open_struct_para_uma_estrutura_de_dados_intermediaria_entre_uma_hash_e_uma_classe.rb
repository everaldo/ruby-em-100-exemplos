# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 072 - Use Open Struct para uma estrutura de dados intermediária
#       entre uma Hash e uma Classe
#
#
#
# Veremos nos últimos exemplos, que uma Classe é uma construção
# da linguagem que permite armazenar Dados e Comportamento (métodos).
#
#
# Uma Hash é uma classe que a princípio só armazena dados.
# Claro que, em Ruby, podemos armazenar um comportamento através
# de Procs, Lambdas e Blocos (veremos isso mais a frente).
# De forma alguma isso é o ideal, mas é possível.
#
#
# Podemos usar uma Open Struct para ter uma estrutura que é intermediária
# entre um Hash e uma Classe.
#
# Através de meta-programação, um método para acessar e escrever um campo
# ou propriedade é criado dinamicamente, ou em tempo de construção.
#
#
# Lembre-se: Hashes e Estruturas são úteis para guardar dados.
#
# Mas, no mundo real, geralmente os dados envolvem comportamento (métodos)
# que realizam transformações sobre eles.
#
# Num paradigma orientado a objetos, é melhor criar Classes que representem
# as entidades do domínio.
#
# Porém, em pequenos scripts, hashes e Open Structs são ideais para o processamento
# de dados
#
#
# Além de OpenStruct, também há a classe Struct, onde os campos devem ser definidos
# no construtor
#
#

require 'ostruct' # precisa carregar a biblioteca


pessoa = OpenStruct.new

pessoa.nome = "João"
pessoa.sexo = "Masculino"
pessoa.idade = 25


p pessoa # => 

