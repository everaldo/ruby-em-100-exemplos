# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 086 - Pra não dizer que não falamos de expressões regulares
#
#
# http://ruby-doc.org/core-2.2.0/Regexp.html
#
#
# Regexp (Regular Expressions / Expressões Regulares) são um mecanismo
# muito poderoso de casamento de padrões.
#
# Como mencionado anteriormente, Ruby foi fortemente influenciada pela linguagem
# PERL.
#
# E PERL é uma linguagem muito utilizada para scripting, processamento de texto,
# isto é, Expressões Regulares!!
#
#
# Não tivemos muito tempo de tocar no assunto, mas vale mencionar que Ruby facilita
# muito o trabalho do programador ao fornecer uma classe própria para lidar com esse
# tipo de problema.
#
# Um ótimo site para treinar expressões regulares em Ruby é:
#
# http://rubular.com/
#
#
# No exemplo abaixo, vamos pegar um array com algumas datas.
#
# Vamos descartar as datas inválidas e transformar esses dados num array
#
# Para isso, utilizaremos os métodos #select e #map
#
#


datas = [ '50/12/2000', #inválida
          '25/10/2001', 
          '10/13/2000', #inválida
          '09/02/100', #inválida
          '9/2/1999']

# só verifica formado - dias até 31, mês até 2, 4 digitos ano
#
# http://rubular.com/r/05mfpjndQj
#
# Essa expressão regular está longe de ser perfeita, mas dá pro gasto


FORMATO_DATA = /(?<dia>[1-9]|(3[01])|[12]\d)\/(?<mes>\d|1[012])\/(?<ano>\d{4})/


novas_datas = datas.select {|data| data =~ FORMATO_DATA}.map do |data|
                FORMATO_DATA.match(data)
              end.map do |match_data|
                hash = {}
                hash[:dia] = match_data['dia']
                hash[:mes] = match_data['mes']
                hash[:ano] = match_data['ano']
                hash
              end

p novas_datas
