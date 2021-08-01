# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 069 - Use fetch para retornar um valor default quando a chave não existir
#
# http://ruby-doc.org/core-2.3.0/Hash.html#method-i-fetch
#
#
# Quando uma chave inexistente de uma hash é acessada, por padrão nil
# é retornado.
#
# Se no momento da construção da hash (método new) for passado um bloco,
# esse valor será avaliado. Mas, raramente essa opção é utilizada.
#
#
# O método fetch permite retornar um valor default, lançar a Exceção KeyError,
# se nenhum valor default for fornecido ou calcular dinamicamente com um bloco.
#
#
# Esse método é muito útil em métodos que recebem diversas opções como argumentos
#
#




def um_metodo_controverso(args = {})
  hora = args[:hora]
end

def um_metodo_controverso2(args = {})
  hora = args[:hora] || Time.now.usec
end

def um_metodo_controverso3(args = {})
  hora = args.fetch :hora
end


def um_metodo_controverso4(args = {})
  hora = args.fetch(:hora, Time.now.usec)
end

def um_metodo_controverso5(args = {})
  hora = args.fetch(:hora) do |key|
    Time.now.usec
  end
end

puts "Tempo agora=#{Time.now.usec}"
puts um_metodo_controverso()
puts um_metodo_controverso2(hora: false)
begin
  puts um_metodo_controverso3() # => 
rescue KeyError => e
  puts "Key error foi lançado no exemplo 3"
end # => nil
puts um_metodo_controverso4()
puts um_metodo_controverso5()


# O primeiro método retorna nil, porque nenhum valor foi passado
#
# O segundo, que utiliza um or || funciona bem, porque foi passado
# o valor false. Mas é perigoso, porque se um valor como string vazia
# fosse passada, o segundo operando não seria avaliado. É uma técnica
# muito utilizada, mas relativamente insegura. Pois, às vezes, falso
# é um valor válido para o argumento, mas pode ser sobrescrito por outro
# através do or.
#
# O terceiro método, lança a exceção KeyError, que é capturada pela cláusula
# Rescue
#
# O quarto exemplo, utiliza o argumento default, passado como segundo parâmetro
#
# O quinto exemplo, retorna o valor default dinâmico, calculado no bloco.
#
#
# Note que todos os tempos estão em ordem crescente e são superiores à
# Tempo agora. Isso significa que os valores são avaliados somente
# no momento da chamada da função, não na definição.
#
# Na Linguagem Python, os valores são avaliados "eager" # =>
#
#
#
#

# >> Tempo agora=750944
# >> 
# >> 750980
# >> Key error foi lançado no exemplo 3
# >> 751024
# >> 751029
