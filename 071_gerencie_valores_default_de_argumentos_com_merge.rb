# 09/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 071 - Gerencie valores default de argumentos com merge
#
#
# O método merge permite mesclar duas hashes.
# Ele pode ser muito útil ao gerenciar argumentos default de
# um método.
#
#
# Os valores da hash passada como argumento tem precedência
# sobre os valores da hash original.
#
# merge retorna uma nova hash.
#
# Use merge! para aplicar as alterações na própria hash
#
#


def pagamento(args = {})
  default_args = {
    forma_pagamento: :dinheiro,
    desconto: 0.0,
    valor: 0
  }
  args = default_args.merge(args)
  puts args
end



puts pagamento(forma_pagamento: :cartao, valor: 100, desconto: 0.1)
puts pagamento(valor: 100, desconto: 0.1)
puts pagamento(forma_pagamento: :cartao, desconto: 0.1) # => nil
puts pagamento() # => nil
puts pagamento(forma_pagamento: :cartao) # => nil
# #1 Nenhum valor é afetado
#
# #2 dinheiro é adicionado como forma de pagamento padrão
#
# #3 o valor 0 é adicionado como valor padrão
#
# #4 dinheiro, desconto e forma de pagamento são adicionados
#
#
# #5 desconto 0.0 é adicionado como valor padrão

# >> {:forma_pagamento=>:cartao, :desconto=>0.1, :valor=>100}
# >> 
# >> {:forma_pagamento=>:dinheiro, :desconto=>0.1, :valor=>100}
# >> 
# >> {:forma_pagamento=>:cartao, :desconto=>0.1, :valor=>0}
# >> 
# >> {:forma_pagamento=>:dinheiro, :desconto=>0.0, :valor=>0}
# >> 
# >> {:forma_pagamento=>:cartao, :desconto=>0.0, :valor=>0}
# >> 



