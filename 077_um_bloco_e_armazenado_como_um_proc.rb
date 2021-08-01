# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 077 - Um bloco é armazenado como um Proc
#
#
# http://ruby-doc.org/core-2.2.0/Proc.html
#
# Proc (procedure) é um objeto que representa um bloco de código
# e seu contexto (closure).
#
#



def metodo( &bloco)
  puts "Classe do bloco=#{bloco.class}" if block_given?
  yield if block_given?
  yield if block_given?
  bloco.call if block_given?
  bloco.call if block_given?
end


metodo { puts "O que está aqui será executado quatro vezes, por
                   conta de 2 yields e 2 calls. Cada yield executa o bloco
                   uma vez" }
