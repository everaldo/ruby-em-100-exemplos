# 31/05/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 006 - Métodos de predicados terminam em ponto de interrogação
#
#
# Na linguagem Ruby, existe uma convenção de que métodos de predicados:
# métodos que retornam um valor booleano, verdadeiro ou falso, terminam
# com o caractere ponto de interrogação (ao contrário de outras linguagens,
# onde é um caractere inválido).
#
#



puts nil.nil?
puts false.nil?
puts "".nil?
puts 0.nil?
puts 0.even?
puts 1.odd?
puts -1.negative?
puts 42.positive?
puts "".empty?
puts "Mariana".include?("ana")

#
# Observe que nem false, nem string vazia e nem 0 são valores nulos
#
# Em Ruby, apenas dois valores são falsos: nil e false
# O restante é verdadeiro
# Mas se você comparar nil == false, retorna falso
#
