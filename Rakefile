require 'rake/clean'

CC = "clang++"
OPT = "-g -Wall"
BINS = FileList["**/bin/*"]
BIN_DISTDIR = "./bin"

CLEAN.include()
CLOBBER.include(BINS)

directory BIN_DISTDIR
rule /.*/ => BIN_DISTDIR do |t,args|
  sh "#{CC} #{'src/'+t.name+'.cc'} -o #{t.name} #{OPT}"
  sh "mv #{t.name} #{t.name+'.dSYM'} bin"
end