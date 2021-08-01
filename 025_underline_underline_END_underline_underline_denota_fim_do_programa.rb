# 06/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 025 - __END__ denota fim do programa
#
#
# Se o interpretador Ruby encontrar uma linha com o conteúdo
# __END__, sem espaços antes e depois, isso significa fim do
# programa.
#
# Todo o conteúdo abaixo dessa linha é ignorado pelo interpretador,
# mas pode ser acessado através do objeto global DATA, que é da classe
# IO
#


#
# Você pode usar o próprio código-fonte para armazenar os dados
# da sua aplicação
#

while cidade = DATA.gets
  puts cidade
end


__END__
Roma
Paris
Nova York
Los Angeles
Rio de Janeiro
Buenos Aires
