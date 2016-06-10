# 03/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 016 - Há variáveis globais entre nós
#
#
# É comum encontrarmos em livros e tutoriais sobre Programação
# Orientada a Objetos que "estado global é do mal" e que devemos
# evitar variáveis globais.
#
# Vimos que o método puts é definido no módulo Kernel, que por sua
# vez é incluso na classe Object, sendo automaticamente herdado por
# todos os outros objetos (e classes) que descendem de Object.
#
# Esta é a forma elegante de realizar a saída de dados.
#
# Porém, a linguagem Ruby foi projetada com forte
# influência da linguagem de scripting PERL, e sem muito esforço
# podemos encontrar (e utilizar) variáveis globais.
#
# Uma variável global começa com o caractere $
#


# Para obter a lista de todas as variáveis globais
# use o método global_variables


puts global_variables


# A variável global $stdout representa a saída padrão
# Ela é um objeto da classe IO


puts $stdout.class


# Podemos invocar diretamente a saída padrão, sem o comando puts
# utilizando o método print ou <<


$stdout << "Alô mundo\n"

$stdout.print "Alô mundo, de novo\n"
