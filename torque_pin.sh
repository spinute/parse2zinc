#!/bin/sh
#PBS -N pin_test.out
#PBS -l ncpus=4
#PBS -l nodes=1:ppn=4
#PBS ‒q default
cd $PBS_O_WORKDIR
NPROCS=`wc -l < $PBS_NODEFILE`
mpirun -np 4 ./pin_test