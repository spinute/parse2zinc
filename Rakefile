require 'rake/clean'

CC = "clang++"
OPT = "-g -m64 -Wall -lpthread -lm -lgurobi_c++ -lgurobi56 -stdlib=libstdc++ -std=c++11"
LIB = "/Library/gurobi563/mac64/lib/"
INC = "/Library/gurobi563/mac64/include/"
BINS = FileList["**/bin/*"]
BIN_DISTDIR = "./bin"

CLEAN.include()
CLOBBER.include(BINS)

task :default => [:clobber, :generator] do
end

directory BIN_DISTDIR
rule /.*/ => BIN_DISTDIR do |t,args|
  sh "#{CC} #{'src/'+t.name+'.cc'} -o #{t.name} #{OPT} -I#{INC} -L#{LIB}"
  sh "mv #{t.name} #{t.name+'.dSYM'} bin"
end