require 'rake/clean'

HOME = "/Users/spinute/Dropbox/program/parse2zinc"

CC = "clang++"
OPT = "-m64 -Wall -lpthread -lm -lgurobi_c++ -lgurobi56 -stdlib=libstdc++ -std=c++11"
LIB = "/Library/gurobi563/mac64/lib/"
INC = "/Library/gurobi563/mac64/include/"
BINS = FileList["**/bin/*"]
TMPS = FileList["**/tmp/*"]
BIN_DISTDIR = "./bin"

CLEAN.include(TMPS)
CLOBBER.include(BINS)

task :default => [:clobber, :sas_generator, :check_valid] do
	
end

task :gripper01 do 
	sh "~/fastdownward/src/translate/translate.py domain/gripper/domain.pddl domain/gripper/prob01.pddl"
end

task :test do
	sh "bash script/test.sh"
end

directory BIN_DISTDIR
rule /.*/ => BIN_DISTDIR do |t,args|
  sh "#{CC} #{HOME+'/src/'+t.name+'.cc'} -o #{t.name} #{OPT} -I#{INC} -L#{LIB}"
  sh "mv #{t.name} bin"
end