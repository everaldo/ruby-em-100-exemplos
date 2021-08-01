# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 014 - inspect e o método p
#
#
# Vimos que o comando (método) puts imprime um objeto para a saída padrão.
# Ele retorna nil e aceita múltiplos parâmetros, separados por vírgula
# 
#
# O método puts força o objeto a se converter para string, invocando
# o método to_s dos seus parâmetros.
#
#
# Já o método p invoca o método inspect dos objetos.
#
# inspect é a representação interna do objeto. Geralmente, nome da classe
# e endereço de memória para objetos que não sejam dos tipos básicos:
# Fixnum, String, Symbol, nil, false, true
#
#
# Quando um objeto não define o método to_s, por padrão ele invoca
# inspect. Mas não espere sempre os mesmos resultados.
# Lembre-se: inspect, representação interna; to_s coerção para String
#
#
#


puts 42 #equivalente a puts(42.to_s) ou puts(42.to_s)
puts 42.to_s
puts(42.to_s())
puts 42.to_s # como não recebe argumentos, não tem ambiguidade


o = Object.new # cria um novo objeto

# Imprime o endereço de memória e o nome da classe
# porque o objeto não define o método to_s
puts o

# Imprime o endereço de memória e o nome da classe # =>
p o


## Agora, vamos definir o método to_s somente para este objeto o


o.define_singleton_method :to_s do
  "Representação String de o"
end

# Imprime Representação String de o
puts o

# Imprime o endereço de memória e o nome da classe
p o


# Vamos hackear o método inspect para provar
# que o método p invoca ele
#

o.define_singleton_method :inspect do
  "Jack esteve aqui"
end

# Imprime Jack esteve aqui
p o

