# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 050 - Ruby também possui while e until, mas é muito raro utilizá-los
#       também
#
#
# Vimos em exemplos anteriores, como os comandos while e until podem ser
# utilizados para modificar um bloco begin/end.
#
# Como estamos aprendendo Ruby, é importante distinguir que while e until
# existem independentes de blocos begin / end.
#
# Já vimos isso, nos exemplos 042 e 043, onde while e until são utilizados
# com um único comando.
#
# Mas, podemos construir um bloco com while e until, delimitando apenas por end
#
#
#
#
# until <cond>
#   # comandos
# end
#
#
# while <cond>
#   # comandos
# end
#
#
# Agora a parte sobre ser raro utilizá-los:
#
# Em Ruby, geralmente programamos com chamadas de métodos (Orientação a Objetos).
# E existem objetos especiais, que logo veremos, que tratam de coleções.
# Os principais são: Enumerable (Módulo), Enumerator (Classe), Array (Classe) e
# Hash (Classe).
#
# Sendo que o programador pode definir suas próprias coleções também.
#
# Dessa forma, geralmente iteraremos sobre essas coleções com chamadas de métodos
# de suas classes, não com estruturas de controle.
#
#
# De fato, essas estruturas são utilizadas apenas no nível mais baixo de programação,
# na construção desses loops.
#
# Como bons programadores, ignoramos ao máximo os detalhes e trabalhamos em
# comunicação de alto-nível.
#
#
# A não ser que você seja uma máquina rebelde, claro. ;)
#
# Mas já mostramos em exemplos anteriores em como domar esses danadinhos.
#


i = 0
while i < 10
  puts i
  i += 1
end

until i == 0
  puts i
  i -= 1
end





