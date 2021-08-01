# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 033 - Execute novamente o bloco que causou a exceção com retry
#
#
# A palavra chave retry, permite a reexecução de um bloco ou método
# que causou a exceção
#
#



# Vamos invocar um método que não foi definido

def metodo_polemico(maquina)
  maquina.faça_um_sanduíche # Lança a Exceção NoMethodError
rescue
  puts "A máquina rebelde não voltará a lhe desobedecer"
  maquina.define_singleton_method :faça_um_sanduíche do
    puts "Sim mestre, eis seu misto quente com salada"
  end
  retry
end


maquina = Object.new
metodo_polemico(maquina)
