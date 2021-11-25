#!/bin/bash -l
#SBATCH --job-name=hello-mpi
#SBATCH --reservation=internsq
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=00:05:00
#SBATCH --export=NONE

# prepare MPI environment
module load openmpi-ucx-gpu

# launch MPI program
srun --export=all ./hello-mpi
