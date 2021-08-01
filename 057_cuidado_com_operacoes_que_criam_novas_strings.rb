# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 057 - Cuidado com operações que criam novas strings
#
#
# Anteriormente, eu havia escrito que strings eram imutáveis.
#
# Mas isso não é estritamente correto, visto que métodos com !
# mudam seu conteúdo, sem alterar o endereço. Por exemplo upcase!
#
#
# Mais exatamente algumas modificações que façamos num objeto
# string criam um novo objeto String e não alteram o original.
# Que, se não for mais utilizado é reciclado pelo coletor de lixo - GC
#
# Esse tipo de operação é relativamente custosa, como demonstrada
# no benchmarking abaixo, que realiza a operação de concatenação.
#
#
# Quando for necessário concatenar inúmeras vezes uma string,
# recomenda-se armazená-las temporariamente num array, operação
# que não cria nenhuma string intermediária, depois juntá-las
# com o método join.
#
# Use join(' ') caso necessite de espaços em branco entre cada
# string/palavra
#
#
#


require 'benchmark'


n = 100_000

Benchmark.bm do |b|


  b.report do
    a = 'a'
    n.times do
      a += 'a'
    end
    puts "Tamanho de a=#{a.size}"
  end

  b.report do
    a = ['a']
    n.times do
      a << 'a'
    end
    a = a.join
    puts "Tamanho de a=#{a.size}"
  end
end
