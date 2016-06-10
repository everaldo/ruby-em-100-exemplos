# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 032 - Capture todos os tipos de Exceções com Rescue Exception
#
#
# rescue permite que você especifique quais tipos de erros podem
# ser capturados.
# Você pode ter inúmeros erros separados por vírgulas, ou inúmeras
# claúsulas rescue
#
# Quando não especificamos o erro na claúsula, ele não captura todas
# as Exceções. Apenas as que derivam de StandardError
#
# Para capturar todas as exceções, use:
#
# rescue Exception
#
# ou 
#
# rescue Exception => e, que armazena as informações do erro na variável e
#
#
# Vamos simular um erro de sintaxe
#



begin
  eval("1 + ")
rescue Exception => e
  puts "Houve um erro de sintaxe. Confira as informaçoes abaixo"
  puts e.message
end
