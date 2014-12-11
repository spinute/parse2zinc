require 'rake/clean'
require 'pathname'

HOME = "/Users/spinute/Dropbox/program/parse2zinc"
FD   = "/Users/spinute/fastdownward" 

CC = "clang++"
OPT = "-m64 -Wall -Wextra -lpthread -lm -lgurobi_c++ -lgurobi56 -stdlib=libstdc++ -std=c++11"
DOPT = "-g -O0"
LIB = "/Library/gurobi563/mac64/lib/"
INC = "/Library/gurobi563/mac64/include/"
BINS = FileList["**/bin/*"]
TMPS = FileList["**/tmp/*"]
BIN_DISTDIR = "./bin"

CLEAN.include()
CLOBBER.include()


desc 'clobber, compile generator, validator'
task :default => [:clobber, :sas_generator, :check_valid] do
	
end

desc 'do test: domain gripper problem 01'
task :gripper01 do 
	sh "~/fastdownward/src/translate/translate.py domain/gripper/domain.pddl domain/gripper/prob01.pddl"
end

desc 'do experiment'
task :test do
	sh "script/test"
end

task :extract_bench do

end

desc 'cp benchmarks from fastdownward dir'
task :get_bench do
	source = Pathname.new("#{FD}/benchmarks")
	home   = Pathname.new(HOME)
	FileUtils.cp_r source.to_s, home.to_s
end

# default compilation
directory BIN_DISTDIR
rule /.*/ => BIN_DISTDIR do |t,args|
  sh "#{CC} #{HOME+'/src/'+t.name+'.cc'} -o #{t.name} #{OPT} #{DOPT} -I#{INC} -L#{LIB}"
  sh "mv #{t.name} bin"
end

