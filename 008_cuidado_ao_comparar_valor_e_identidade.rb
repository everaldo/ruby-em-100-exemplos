# 02/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 008 - Cuidado ao comparar valor e identidade
#
#
# Ao comparar dois objetos, cuidado com o tipo de comparação:
# de valor ou identidade (endereço / object_id)
#
#
# O método equal? compara identidade
# O método eql? ou == compara valor
#
#


## Fixnum
 # =>
puts 5 == 5
puts 5.eql? 5
puts 5.equal? 5


## Bignum


puts 1_000_000_000_000_000_000_000_000 ==  1_000_000_000_000_000_000_000_000
puts 1_000_000_000_000_000_000_000_000.eql?  1_000_000_000_000_000_000_000_000
puts 1_000_000_000_000_000_000_000_000.equal?  1_000_000_000_000_000_000_000_000 # retorna false


## Strings

cwb = "Curitiba"
curitiba = "Curitiba"


puts cwb == curitiba
puts cwb.eql? curitiba
puts cwb.equal? curitiba


## Símbolos

cwb = :curitiba # => :curitiba
curitiba = :curitiba



puts cwb == curitiba
puts cwb.eql? curitiba
puts cwb.equal? curitiba # retorna true, porque símbolos são constantes
