# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 081 - Você pode usar Enumeradores para gerar números de Fibonacci
# 
#
#



fibonacci = Enumerator.new do |yielder|
  fn1 = 1
  fn2 = 0
  yielder.yield fn2
  yielder.yield fn1
  loop do
    yielder.yield fn1 + fn2
    fn1, fn2 = fn1 + fn2, fn1
  end
end



puts fibonacci.first(100)


#
# Tome muito cuidado com este tipo de Gerador (Generator),
# porque ele gera números infinitos
#
# Você não pode usar métodos como #select e #each, por exemplo
#
#
