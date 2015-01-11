require 'rake/clean'
require 'pathname'

HOME = "/Users/spinute/Dropbox/program/parse2zinc"
FD   = "/Users/spinute/fastdownward" 

CC = "g++-4.8"
OPT = "-m64 -O2 -Wall -Wextra -lpthread -lm -lgurobi_c++ -lgurobi56 -std=gnu++11 -std=c++11"
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

desc 'do experiment'
task :test do
	sh "script/test"
end

desc 'do experiment all domain'
task :atest do
	sh "script/test_all"
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
  sh "#{CC} #{HOME+'/src/'+t.name+'.cc'} -o #{t.name} #{OPT} -I#{INC} -L#{LIB}"
  sh "mv #{t.name} bin"
end

