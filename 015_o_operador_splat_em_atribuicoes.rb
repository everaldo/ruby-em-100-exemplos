# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 015 - O operador splat em atribuições
#
#
# Vamos retomar, brevemente, o tópico das atribuições
# múltiplas para falar do operador splat - asterisco (*)
# em atribuições.
#
# Em exemplos posteriores falaremos do operador splat
#  em argumentos de métodos
# e do operador double splat (**) (não tem nome oficial),
# de argumentos nomeados - recurso Ruby posterior a versão 2.0
#
# ----------------
#
# Quando o splat se encontra do lado esquerdo da atribuição,
# considere-o como construindo um array que armazenará
# o máximo de valores possível.
#
# Quando do lado direito de uma atribuição, o operador
# splat desconstrói o array
#
#
#
#


## Relembrando


a, b = 10, 20, 30


# Imprime 10 e 20. O 30 foi descartado
puts a, b

# --------------------------------------

## a é um array com os valores 10 e 20
## b vale 30

*a, b = 10, 20, 30


puts "a=#{a}"
puts "b=#{b}"

# --------------------------------------

c, *d = 10, 20, 30


## c é um inteiro com valor 10
## d é um array com os valores 20 e 30

puts "c=#{c}"
puts "d=#{d}" # => nil


# ------------------------------

v = [100, 200, 300, 400]

x1, x2, x3 = *v


## x1, x2, x3 = 100, 200 e 300
## 400 foi descartado




puts "x1=#{x1}"
puts "x2=#{x2}"
puts "x3=#{x3}"

# --------------------------------

y1, *y2, y3 = v


## y1 = 100
## y2 = [200, 300] (array)
## y3 = 400

puts "y1=#{y1}"
puts "y2=#{y2}"
puts "y3=#{y3}"


# ------------------------------
# Caso interessante


*e, f, g = [100, 200]

# e será um array vazio []
# f = 100
# g = 200
#

puts "e=#{e}"
puts "f=#{f}"
puts "g=#{g}" # => nil



# Importante lembrar que pode haver mais
# de uma variável no lado direito
#
# Optei por colar os comentários, pois
# resetar todas as variávies para nil
# seria tedioso
#
#
# No primeiro caso
# a = [100, 200]
# b = 50
#
# No segundo caso, com uso de splat em v
#
# a = 100
# b = 200
# 50 é descartado
#
# No terceiro caso, com uso de splat em v e b
#
# a = 100
# b = [200, 50]
#
#
#[2] pry(main)> v = [100, 200]
#=> [100, 200]
#[3] pry(main)> a, b = v, 50
#=> [[100, 200], 50]
#[4] pry(main)> a
#=> [100, 200]
#[5] pry(main)> b
#=> 50
#[6] pry(main)> reset
#Pry reset.
#[1] pry(main)> v = [100, 200]
#=> [100, 200]
#[2] pry(main)> a, b = *v, 50
#=> [100, 200, 50]
#[3] pry(main)> a
#=> 100
#[4] pry(main)> b
#=> 200
#[1] pry(main)> v = [100, 200]
#=> [100, 200]
#[2] pry(main)> a, *b = *v, 50
#=> [100, 200, 50]
#[3] pry(main)> a
#=> 100
#[4] pry(main)> b
#=> [200, 50]

