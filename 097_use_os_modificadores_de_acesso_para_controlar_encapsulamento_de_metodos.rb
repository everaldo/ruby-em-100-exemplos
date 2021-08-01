# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 097 - Use os modificadores de acesso para controlar encapsulamento de métodos
#
#
# São 3 os modificadores de acesso:
#
# public
# private
# protected
#
#
# Além das variáveis de instância, que são automaticamente protegidas e expostas
# somente com os accessors, é possível proteger outros métodos.
#
# Public torna todos os métodos abaixo do modificador visíveis.
#
# Private torna os métodos privados, acessíveis somente na própria classe.
#
# Protected é parecido com private, mas pode ser acessado pelas classes herdeiras.
#
#
#
# http://ruby-doc.org/core-2.3.1/Module.html#method-i-public
# http://ruby-doc.org/core-2.3.1/Module.html#method-i-private
# http://ruby-doc.org/core-2.3.1/Module.html#method-i-protected
#
#


class MochileiroDasGalaxias


  def sentido_da_vida
    calculo_do_sentido_da_vida
  end

  private

  def calculo_do_sentido_da_vida
    42
  end
end


mochileiro = MochileiroDasGalaxias.new


begin
  mochileiro.calculo_do_sentido_da_vida
rescue NoMethodError => ex
  puts "Não pode chamar métodos privados"
  puts "Mensagem=#{ex}"
end


#
# Na verdade, você pode trapacear com meta-programação :D
#


puts mochileiro.send(:calculo_do_sentido_da_vida)

#
# Para honrar o controle de acesso, use public_send
#


begin
  mochileiro.public_send(:calculo_do_sentido_da_vida)
rescue NoMethodError => ex
  puts "Public send honra o modificador de acesso"
  puts "Mensagem=#{ex}"
end


class Geladeira
  # se você não colocar nada, assume-se que os métodos são públicos
  
  def to_s
    "Geladeira pesa=#{peso}"
  end

  protected

  def peso
    100
  end
end

class GeladeiraTurbo < Geladeira

  def peso # você pode invocar o método da classe pai com super
    0.8 * super
  end
end


puts Geladeira.new # imprime 100
puts GeladeiraTurbo.new # imprime 80.0

#
# Compre a nova geladeira turbo, pesa 20% a menos :)
#


