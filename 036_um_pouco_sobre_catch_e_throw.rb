# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 036 - Um pouco sobre catch e throw
#
#
# Ruby possui os comandos throw e catch, mas com semântica
# muito diversa de outras linguagens de programação, tais
# como, Java e Javascript.
#
# throw e catch funcionam como uma espécie de go/to em Ruby.
#
#
# Eles são muito pouco utilizados, por isso não vamos nos aprofundar.
#
#
# Mas eu desconfio que eles são pouco utilizados porque a maioria
# dos programadores não sabe como eles funcionam.
#
#
# Um bom caso de uso seria a necessidade de sair de blocos e loops
# aninhados, onde não é possível usar next ou break (Eis sua natureza
# GO/TO), um dos comandos mais polêmicos em linguagens de programação.
#
#
# Exemplo retirado do livro Programming Ruby 1.9 - página 153
#
#
# Ilustra como o comando throw pode ser utilizado para terminar a interação
# com o usuário caso ele digite o caractere !
#
#

def prompt_and_get(prompt)
  print prompt
  resultado = readline.chomp
  throw :quit_requested if resultado == "!"
  resultado
end

catch :quit_requested do
  nome = prompt_and_get("Nome: ")
  idade = prompt_and_get("Idade: ")
  sexo = prompt_and_get("Sexo: ")
  puts "#{nome}, #{idade}, #{sexo}"
end

#
# Para maiores informações:
# http://ruby-doc.org/core-2.3.1/Kernel.html#method-i-catch
#
#
#
#
#
#
