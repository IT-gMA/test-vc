#!/bin/bash -l
#SBATCH --job-name=hello-serial
#SBATCH --reservation=internsq
#SBATCH --nodes=1
#SBATCH --tasks-per-node=28
#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --export=NONE

# load modules
module load python/3.6.3

# launch serial python script
srun python3 hello-serial.py

