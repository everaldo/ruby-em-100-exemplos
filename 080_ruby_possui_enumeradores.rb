# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 080 - Ruby possui Enumeradores (Enumerators)
# 
#
# Na maior parte das linguagens de Programação, os laços de iteração
# são realizados por estruturas de controle: for e while.
#
#
# Em Ruby, geralmente há objetos que representam coleções (Array e Hash)
# e você invoca métodos para fazer a iteração, tais como: #each e #select
#
#
# Além disso, em Ruby existe uma classe chamada Enumerator, que representa
# um Objeto que faz iteração.
#
# Este objeto possui um método #next, que retorna o próximo valor ou
# StopIteration (lança a exceção) quando os valores terminam.
#
# Você pode converter um objeto para enumerador invocando o método #to_enum.
#
#
# Além disso, quando você invoca métodos de iteração em objetos como array,
# por exemplo #each, e não passa um bloco, Ruby retorna um enumerador que
# pode ser utilizado.
#
#
# Em versões mais novas de Ruby, existem também "Lazy Enumerators".
# Não focaremos neste tópico porque é um tanto avançado, mas eles são ótimos
# para gerar "sequências infinitas", porque nenhum número é gerado até que seja
# necessário, e depois, obviamente, outros métodos realizarão a filtragem.
#
#
# Abaixo, ilustramos como converter um array e um hash para enumeradores.
#
#


a = (100..200).to_a.to_enum

h = {a: 1, b: 2, c: 3, d: 4, e: 5}.to_enum


loop do
  puts a.next
  puts h.next
end

#
# O loop termina assim que os valores do hash são consumidos,
# porque uma exceção StopIteration é lançada e capturada
# silenciosamente pelo método loop
#
