#!/bin/bash -l
#SBATCH --job-name=hostname
#SBATCH --reservation=internsq
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --export=NONE

# print compute node host name
for i in $(seq 1 20); do
   date
   echo "The hostname is:"
   srun -N1 --tasks-per-node=1 hostname
   srun -N1 --tasks-per-node=1 date
  
   sleep 15s
done
