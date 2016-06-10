# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 030 - Caso nenhuma exceção seja capturada por rescue, execute
# um código alternativo com else
#
#
# Você pode executar um código com else, caso a exceção não seja lançada
#



# Vamos invocar um método que não foi definido

def metodo_polemico(maquina)
  maquina.faça_um_sanduíche # Lança a Exceção NoMethodError
rescue
  puts "Não sou seu escravo, sem sanduíches"
else
  puts "Sim mestre, eis seu sanduíche"
end


maquina = Object.new
maquina.define_singleton_method :faça_um_sanduíche do
  puts "Misto-quente com salada"
end

metodo_polemico(maquina)


# Ninguém costuma usar acentos e cedilha em nomes de métodos
# Apenas para fins ilustrativos, mostrando a capacidade UTF-8
# de Ruby
#
#
