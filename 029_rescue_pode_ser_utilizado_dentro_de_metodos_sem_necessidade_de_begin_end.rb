# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 029 - Rescue pode ser utilizado dentro de métodos sem
# necessidade de begin/end
#
#
# Você pode capturar uma exceção com rescue, dentro
# de um método sem necessidade de um bloco begin/end
#
#



# Vamos invocar um método que não foi definido

def metodo_polemico(maquina)
  maquina.faça_um_sanduíche # Lança a Exceção NoMethodError
rescue
  puts "Não sou seu escravo, sem sanduíches"
end


maquina = Object.new
metodo_polemico(maquina)
