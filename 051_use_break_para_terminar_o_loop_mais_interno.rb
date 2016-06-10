# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 051 - Use break para terminar o loop mais interno
#
#
# Conforme mencionamos no exemplo 036 - catch/retry
# existe uma certa polêmica envolvendo comandos no
# estilo GO-TO.
#
# No início, toda a programação era feita com Go-to's.
#
# Depois, com o surgimento da programação estrutura, o
# uso de go-to's foi condenado.
#
# Mas, sabe-se, que na verdade, em muitos casos e muitos
# algoritmos é mais fácil e elegante implementar implementar
# as soluções usando comandos dessa natureza.
#
# Obviamente, as linguagens evoluíram, e não se usa um go-to
# puro.
#
# Utilizamos comandos no estilo try/catch, lançamento de exceções,
# retry, break, redo etc.
#
#
# O comando break, serve para terminar imediatamente a execução
# de um loop (somente o laço mais interno, em casos de loops aninhados).
#
# Em Ruby, break pode retornar valores!!!
#
# Caso um loop não tenha o comando break, ele retorna nil
#
#

i = 0
retorno = while i = i + 1
            break i if i > 50
          end

puts retorno # imprime 51 # =>

i = 0
retorno = while i <= 50
            i = i + 1
          end

puts retorno # => imprime nil


