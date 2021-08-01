# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 096 - Se anda como um pato e fala como um pato, então é um pato
#
#
# Existe um princípio muito famoso na linguagem Ruby conhecido como
# Duck Typing.
#
# Se um objeto anda como um pato e fala como um pato, então ele é um pato.
#
#
# Basicamente, esse princípio quer dizer que mais importante do que a classe
# de um Objeto é o que ele é capaz de fazer.
#
# Lembrando, numa verdadeira linguagem orientada a objetos, só existe um tipo
# real de dados: o tipo Objeto.
#
# Tudo são objetos.
#
# Classes não devem ser consideradas tipos.
#
# No exemplo anterior, todas as classes tinham o método cumprimenta e seguiam
# um esquema de herança.
#
# Mas isso não é necessário em Ruby.
#
# Se o objeto é capaz de responder às mensagens (métodos), não importa se 
# ele é herdeiro ou não.
#
#
# Esse mecanismo é muito poderoso, porque permite facilmente a substituição
# de um objeto por outro.
#
# Por exemplo, quando usamos Enumerable, o módulo não se importa se estamos
# iterando sobre uma String, um Array, um Hash ou qualquer que seja. Tudo
# que ele espera (contrato) é que o objeto responda ao método #each e #<=>
#
#
# Você pode verificar se um objeto responde a um método utilizando o método
#
# #respond_to?(:nome_metodo) que recebe como argumento o nome do método.
#

class Humano

  def cumprimenta
    "Olá, amigo"
  end

end

class Alien

  def cumprimenta
    "Olá, forasteiro"
  end
end


puts Humano.new.respond_to?(:cumprimenta)
puts Alien.new.respond_to?(:cumprimenta)

[Humano, Alien].each do |criatura|
  puts criatura.new.cumprimenta
end  


















