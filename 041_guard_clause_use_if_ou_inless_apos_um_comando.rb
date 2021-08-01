# 07/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 041 - Guard Clause: Use if ou unless após um comando
#
#
# Guard Clause é uma técnica que usa um condicional (if ou unless)
# em uma função, garantindo que ela falhe o mais cedo possível.
#
# Guard Clause aumenta a legibilidade do código
#
#
# http://www.refactoring.com/catalog/replaceNestedConditionalWithGuardClauses.html
# http://www.thechrisoshow.com/2009/02/16/using-guard-clauses-in-your-ruby-code/
#
#
# No link abaixo, apresento um exemplo de uso de Guard Clause
# em uma aplicação de exemplo
# (não-completa) sobre um campeonato de futebol. O método <=>
# compara dois times, de acordo com o número de pontos, vitórias,
# saldo de gols, gols marcados e como último critério de desempate o
# nome. Este método possui apenas 10 linhas, e é relativamente bem legível,
# graças ao uso de guard clauses, que substituem ifs aninhados.
# 
# https://goo.gl/erST7M
#
#       def <=>(other)
#        return  -1 if points > other.points
#        return   1 if other.points > points
#        return  -1 if wins > other.wins
#        return   1 if other.wins > wins
#        return  -1 if goal_difference > other.goal_difference
#        return   1 if other.goal_difference >  goal_difference
#        return  -1 if goals_scored > other.goals_scored
#        return   1 if other.goals_scored > goals_scored
#        return  -1 if name < other.name
#        return   1
#      end
#
#
#
# Esta técnica foi utilizada no Exemplo 035



def faça_um_sanduíche(maquina)
	raise ArgumentError, "Não é uma máquina obediente" unless maquina.respond_to?(:faça_um_sanduíche)
	maquina.faça_um_sanduíche
end



maquina1 = Object.new
maquina2 = Object.new


maquina1.define_singleton_method :faça_um_sanduíche do
 puts "Misto quente com bacon sem salada"
end


faça_um_sanduíche(maquina1)


begin
 faça_um_sanduíche(maquina2)
rescue ArgumentError => e
 puts "Houve um erro: #{e}"
end



