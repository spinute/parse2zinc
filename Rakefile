require 'rake/clean'

CC = "clang++"
OPT = "-O0 -g -m64 -Wall -lpthread -lm -lgurobi_c++ -lgurobi56 -stdlib=libstdc++ -std=c++11"
LIB = "/Library/gurobi563/mac64/lib/"
INC = "/Library/gurobi563/mac64/include/"
BINS = FileList["**/bin/*"]
BIN_DISTDIR = "./bin"

CLEAN.include()
CLOBBER.include(BINS)

task :default => [:clobber, :sas_generator, :gripper01] do
	sh "bin/sas_generator output.sas"
end

task :gripper01 do 
	sh "~/fastdownward/src/translate/translate.py domain/gripper/domain.pddl domain/gripper/prob01.pddl"
end

directory BIN_DISTDIR
rule /.*/ => BIN_DISTDIR do |t,args|
  sh "#{CC} #{'src/'+t.name+'.cc'} -o #{t.name} #{OPT} -I#{INC} -L#{LIB}"
  sh "mv #{t.name} #{t.name+'.dSYM'} bin"
end