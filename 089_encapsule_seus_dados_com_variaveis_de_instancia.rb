# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 089 - Encapsule seus dados com variáveis de instância
#
#
# Até agora vimos:
#
# variáveis locais - x, n, i
#
# variáveis glboais - $LOAD_PATH, $stdin, $stdout
#
# constantes: Math::PI
#
#
# Agora, veremos as famosas instance_vars, ou variáveis de instâncias.
#
# Uma variável de instância pertence a cada instância de uma classe.
#
#
# Vamos rever rapidamente os princípios teóricos da Programação Orientada a Objetos:
#
# #1 Tipo Único - Objeto (Data Abstraction)
# #2 Encapsulamento
# #3 Polimorfismo
# #4 Herança
#
#
# Temos visto, durante todos os exemplos, que em Ruby praticamente tudo é Objeto.
# Expressões aritméticas e lógicas são chamadas de métodos, entrada e saída são objeto.
#
# Só não são objetos as estruturas de controle: if, while etc.
#
# Agora, vamos falar sobre Encapsulamento.
#
#
# Encapsulamento é o princípio que permite que escondamos os detalhes
# da implementação de um objeto. Um Objeto só é acessível por sua interface pública.
# 
#
# Em Ruby, os dados de um objeto são armazenados em variáveis especiais, chamadas
# de variáveis de instância. Toda variável de instância começa com o símbolo @
#
# Uma variável de instância mantém seu valor entre chamadas de métodos
#
#

class ClasseSecreta

  def set_valor_secreto
    @valor_secreto = 42
  end

  def get_valor_secreto
    @valor_secreto
  end

end

objeto = ClasseSecreta.new

puts objeto.get_valor_secreto # não imprime nada

objeto.set_valor_secreto


puts objeto.get_valor_secreto # imprime 42


#
# O programador não consegue acessar diretamente o valor de @valor_secreto
#
# A não ser que ele use "truques sujos" de metaprogramação ;)
#


objeto2 = ClasseSecreta.new

objeto2.instance_variable_set(:@valor_secreto, 99)

puts objeto2.get_valor_secreto


#
# Regras foram feitas para serem quebradas, né?
#
#
#
