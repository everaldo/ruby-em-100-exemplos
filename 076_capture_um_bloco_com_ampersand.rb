# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 076 - Capture um bloco com ampersand (&)
#
#
# É possível capturar um bloco numa variável, precedendo-a
# com &. Essa variável deve ser a última da lista de parâmetros
#
#
#



def o_dobro(n, &bloco)
  bloco.call(n * 2) if block_given?
end


o_dobro(5) { |i| puts "O dobro de 5 é #{i}" }
