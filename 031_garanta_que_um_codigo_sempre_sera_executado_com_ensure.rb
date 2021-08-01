# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 031 - Garanta que um código sempre será executado com ensure
#
#
#
# ensure (semelhante ao finally do Java) garante que um código
# sempre será executado depois de um rescue. Mesmo se esse bloco
# rescue disparar outra exceção
#
#
#
#



# Vamos invocar um método que não foi definido

def metodo_polemico(maquina)
  maquina.faça_um_sanduíche # Lança a Exceção NoMethodError
rescue
  puts "Não sou seu escravo, sem sanduíches"
else
  puts "Sim mestre, eis seu sanduíche"
ensure
  puts "Este bloco sempre é executado.
        Use-o para fechar arquivos e conexões, por exemplo"
end


maquina1, maquina2 = Object.new, Object.new
maquina2.define_singleton_method :faça_um_sanduíche do
  puts "Misto-quente com salada"
end

metodo_polemico(maquina1)
metodo_polemico(maquina2)


# Ninguém costuma usar acentos e cedilha em nomes de métodos
# Apenas para fins ilustrativos, mostrando a capacidade UTF-8
# de Ruby
#
#
