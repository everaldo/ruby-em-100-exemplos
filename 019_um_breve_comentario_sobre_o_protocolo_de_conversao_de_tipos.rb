# 03/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 019 - Um breve comentário sobre o protocolo de conversão de tipos
#
#
# Vimos no exemplo anterior que toda a leitura é feita como String,
# e caso desejos outro tipo de dados, devemos invocar métodos que
# realizam essa conversão. Boa parte desses métodos já vem implementado
# por padrão nas classes String e Fixnum. Enumeremos os principais:
#
#
# to_c # Converte para número complexo
# to_r # Converte para número racional
# to_f # Converte para número em ponto-flutuante
# to_s # Converte para String
# to_i # Converte para Inteiro
# to_sym # Converte para símbolo
# to_str # Somente para objetos que agem como String
#        # A única classe do Core do Ruby que implementa isso é a
#        # própria classe String
# Mais info em:
# https://gist.github.com/everaldo/de6a1f606fbc49cc59e074f044e62014
#
#


begin
  puts "Digite uma string, número ou 'sair' ou [qQ] para terminar"
  s = gets.chomp
  {to_c: 'Complexo', to_r: 'Racional', to_f: 'Flutuante',
   to_i: 'Inteiro', to_s: 'String', 
   to_sym: 'Símbolo'}.each do |tipo, nome|
    puts "original: #{s} - convertido: (#{nome}) #{s.send(tipo).inspect}"
  end
end until s == "sair" or s.downcase == "q"


# Eu sei que tem um bug, se você digitar sair ou q de primeira
# ele imprime os valores para esse comando :)


# Perceba que introduzi novos elementos, para instigar a curiosidade:
# bloco begin/end
# condicional com until
# sintaxe de hash literal {}
# blocos do/end
# meta-programação com send()
#
