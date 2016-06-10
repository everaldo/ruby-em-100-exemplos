# 10/06/2016 - Everaldo Gomes - everaldo.gomes@gmail.com
#
# 100 - Leia um arquivo com read
#
#
# http://ruby-doc.org/core-2.3.1/IO.html#method-c-read
#
#
# A classe IO é muito poderosa. Ela permite ler/escrever arquivos,
# abrir sites, e até criar novos subprocessos.
#
#
# Neste exemplo, vamos abrir e ler o conteúdo do próprio código fonte
#
#
# __FILE__ representa o caminho do próprio arquivo
#

require 'pathname'

#
# A biblioteca Pathname é relativamente nova.
# Vale a pena ler a documentação na Internet, porque muitos tutoriais
# antigos não apresentam a solução de caminhos e diretórios utilizando-a
#
# http://ruby-doc.org/stdlib-2.1.1/libdoc/pathname/rdoc/Pathname.html
#


caminho = Pathname.getwd + __FILE__
puts File.read(caminho)
