#!/bin/bash -l
#SBATCH --job-name=hello-openmp
#SBATCH --reservation=internsq
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=00:05:00
#SBATCH --export=NONE

# set OpenMP environment variables
export OMP_NUM_THREADS=28
export OMP_PLACES=cores
export OMP_PROC_BIND=close

# Load modules, i.e RUNNING SOFTWARE
module swap gcc/8.3.0


# launch OpenMP program -n means run with 1 node and the "1" folllows it means run with 1 core
srun --export=all -n 1 -c ${OMP_NUM_THREADS} ./hello-openmp-gcc
