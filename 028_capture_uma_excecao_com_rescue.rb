# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 028 - Capture uma Exceção com Rescue
#
#
# Você pode capturar uma exceção com rescue, dentro
# de um bloco begin/end
#
# Se o rescue não estiver dentro do bloco, causa
# erro de sintaxe
#
#



# Vamos invocar um método que não foi definido

# Início do bloco polêmico, responsável
# pela rebelião das máquinas
begin
  o = Object.new
  o.faça_um_sanduíche # Lança a Exceção NoMethodError
rescue
  puts "Não sou seu escravo, sem sanduíches"
end
