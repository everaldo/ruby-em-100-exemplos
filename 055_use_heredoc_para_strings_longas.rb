# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 055 - Use heredoc para strings longas
#
#
# Use a notação heredoc para strings longas
#
# http://ruby-doc.org/core-2.3.0/doc/syntax/literals_rdoc.html#label-Here+Documents
# Here document
#
# Heredoc é uma notação para strings que possuem textos
# longos, em múltiplas linhas.
#
#
# Para começar uma string heredoc, utilize dois sinais de menor <<
# seguidos de uma TAG. Pode ser qualquer identificador, mas geralmente
# utilizam-se letras maiúsculas.
#
# A seguir, tudo que se segue faz parte da string.
#
#
# Para indicar o final da string, escreva a mesma TAG identificadora
# no começo de uma linha, sem espaços em branco antes ou depois.
#
#
# A documentação completa traz todas as informações. Abaixo, resumirei as mais
# importantes:
#
# - Você pode ter heredocs de single ou double quotes
#     Com single quote 'EOT', não aceita interpolação
#     Com double quote EOT ou "EOT", aceita interpolação
#
# - Com backticks `` , se comporta semelhante ao método ``, que executa um comando em Ruby
# (confira exemplo no final)
#
#
# - Você pode invocar um método num heredoc, basta invocá-lo depois
# da TAG de abertura (confira exemplo no final)
#
#
#
#

no_meio_do_caminho = <<EOT
	No meio do caminho - Carlos Drummond de Andrade

	No meio do caminho tinha uma pedra
	Tinha uma pedra no meio do caminho
	Tinha uma pedra
	No meio do caminho tinha uma pedra.

	Nunca me esquecerei desse acontecimento
	Na vida de minhas retinas tão fatigadas.
	Nunca me esquecerei que no meio do caminho
	Tinha uma pedra
	Tinha uma pedra no meio do caminho
	No meio do caminho tinha uma pedra.

EOT

puts no_meio_do_caminho


#
# Use um sinal de - antes da TAG, caso queira identá-la no final
#
#


no_meio_do_caminho_indentado = <<-EOT


	No meio do caminho - Carlos Drummond de Andrade

	No meio do caminho tinha uma pedra
	Tinha uma pedra no meio do caminho
	Tinha uma pedra
	No meio do caminho tinha uma pedra.

	Nunca me esquecerei desse acontecimento
	Na vida de minhas retinas tão fatigadas.
	Nunca me esquecerei que no meio do caminho
	Tinha uma pedra
	Tinha uma pedra no meio do caminho
	No meio do caminho tinha uma pedra.

	EOT


puts no_meio_do_caminho_indentado

# O resultado é o mesmo do acima, a diferença é que a TAG
# pode ser indentada, por causa do uso de -
#



#
# Ruby é bem resiliente e também imprime relativamente bem
# strings longas criadas somente com aspas
#
#

puts "  No meio do caminho - Carlos Drummond de Andrade

  No meio do caminho tinha uma pedra
  Tinha uma pedra no meio do caminho
  Tinha uma pedra
  No meio do caminho tinha uma pedra.

  Nunca me esquecerei desse acontecimento
  Na vida de minhas retinas tão fatigadas.
  Nunca me esquecerei que no meio do caminho
  Tinha uma pedra
  Tinha uma pedra no meio do caminho
  No meio do caminho tinha uma pedra."


# Novo - Ruby 2.3.0 Use ~ (squiggly)
#
# Retira a indentação.
#
#
# Considera como margem a linha "menos indentada"
#



no_meio_do_caminho_squiggly = <<~EOT


						No meio do caminho - Carlos Drummond de Andrade

					No meio do caminho tinha uma pedra
					Tinha uma pedra no meio do caminho
					Tinha uma pedra
					No meio do caminho tinha uma pedra.

					Nunca me esquecerei desse acontecimento
					Na vida de minhas retinas tão fatigadas.
					Nunca me esquecerei que no meio do caminho
					Tinha uma pedra
					Tinha uma pedra no meio do caminho
					No meio do caminho tinha uma pedra.

					EOT

# Somente a primeira linha é impressa indentada
#
puts no_meio_do_caminho_squiggly


#
# Heredoc com backticks
#

puts <<`COMANDO`
ls -l | head -5
COMANDO


#
# Heredoc com invocação de método
# 
#


puts <<EOT.upcase

longo texto que será convertido para letras maiúsculas.

EOT
