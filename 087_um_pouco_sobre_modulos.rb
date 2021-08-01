# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 087 - Um pouco sobre Módulos
#
#
# Um módulo é uma coleção de métodos e constantes.
#
#
# Ruby não implementa Herança Múltipla. Uma Classe pode herdar diretamente
# somente de uma outra Classe.
#
# Mas, em Ruby, existe um mecanismo chamado "Mixin" ou "Mix-in".
#
# Esse mecanismo permite que uma classe inclua um ou mais módulos através
# dos comandos include ou extend.
#
# É um mecanismo muito útil, pois na prática tem o mesmo efeito de herança
# múltipla.
#
# Mas deve-se tomar muito cuidado, pois herança é sinônimo de acoplamento.
# E acoplamento significa problemas, na prática.
#
#
# No entanto, quando bem feito, é um mecanismo muito útil.
# Como, por exemplo, o módulo Enumerable, que temos visto.
#
# Um módulo também pode incluir outros módulos.
#
#
# Não é possível instanciar um Módulo que você criou com #new
# Mas você pode acessar os métodos do módulo
#
#
#
# http://ruby-doc.org/core-2.2.0/Module.html
#
#


module MeuModulo
  def self.metodo_do_modulo
    puts "Oi, sou um método"
  end

  def MeuModulo.tambem_sou_metodo_do_modulo
    puts "Eu também sou um método do módulo"
  end
end

if __FILE__ == $0 # só executa os comandos abaixo se o arquivo não foi incluído por outro
  puts MeuModulo::metodo_do_modulo
  puts MeuModulo::tambem_sou_metodo_do_modulo
end
# Essa é a gambiarra que Ruby e Python fazem para simular um método main

