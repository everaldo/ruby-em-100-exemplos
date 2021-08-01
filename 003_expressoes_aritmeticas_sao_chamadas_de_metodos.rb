# 31/05/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 003 - Expressões aritméticas são chamadas de métodos
#
# Na linguagem Ruby, números são objetos da classe Fixnum.
# A partir da versão 2.4, todos os números serão da classe Integer
# Atualmente, números muito grandes pertencem à classe Bignum.
#
# De qualquer forma, todos os números são objetos.
# E uma expressão aritmética é, na verdade, uma chamada de método
#
#
#
#



2 + 5 # => 7



2.send(:+, 5) # => 7




2.class # => Fixnum


# Você pode usar o caractere _ para tornar números grandes mais legíveis

1_000_000_000_000_000_000_000_000.class # => Bignum


2.public_methods # => [:%, :&, :*, :+, :-, :/, :<, :>, :^, :|, :~, :-@, :**, :<=>, :<<, :>>, :<=, :>=, :==, :===, :[], :inspect, :size, :succ, :to_s, :to_f, :div, :divmod, :fdiv, :modulo, :abs, :magnitude, :zero?, :odd?, :even?, :bit_length, :to_int, :to_i, :next, :upto, :chr, :ord, :integer?, :floor, :ceil, :round, :truncate, :downto, :times, :pred, :to_r, :numerator, :denominator, :rationalize, :gcd, :lcm, :gcdlcm, :+@, :eql?, :singleton_method_added, :coerce, :i, :remainder, :real?, :nonzero?, :step, :positive?, :negative?, :quo, :arg, :rectangular, :rect, :polar, :real, :imaginary, :imag, :abs2, :angle, :phase, :conjugate, :conj, :to_c, :pretty_print, :pretty_print_cycle, :between?, :pretty_print_instance_variables, :pretty_print_inspect, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :public_method, :singleton_method, :is_a?, :extend, :define_singleton_method, :method, :to_enum, :enum_for, :pretty_inspect, :=~, :!~, :respond_to?, :freeze, :display, :object_id, :send, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
