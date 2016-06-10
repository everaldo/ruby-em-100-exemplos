# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 009 - Parênteses são opcionais quando não há ambiguidade
#
#
# Nos exemplos anteriores, fizemos uso de várias definições 
# e chamadas de métodos sem o uso de parênteses.
#
# Isso porque, em Ruby, parênteses são necessários somente
# para evitar ambiguidades
#


puts("Alô Mundo")
puts "Alô mundo"



# É de bom tom utilizar parênteses na definição de métodos
def metodo1(a, b)
  "(Metodo1: a=#{a} b=#{b})"
end

def metodo2(c, d) # ~> ArgumentError: wrong number of arguments (given 3, expected 2)
  "(Metodo2: c=#{c} d=#{d})"
end


# As duas chamadas são equivalentes
puts metodo1 metodo2("val1", "val2"), "val3"
puts metodo1(metodo2("val1", "val2"), "val3")


##
## Esta linha abaixo causa o erro ArgumentError
## 3 argumentos dados, 2 esperados
##
## É necessário usar parênteses porque a chamada é ambígua
## Ruby não consegue distinguir que val3 pertence a método 1
##


#puts metodo1 metodo2 "val1", "val2", "val3" # => 



# Em casos de ambiguidades, somente os métodos "mais internos" precisam
# de parênteses.

