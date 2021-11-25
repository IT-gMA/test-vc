#!/bin/bash


#SBATCH --ntasks=10
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --partition=gpuq
#SBATCH --reservation=internsq

module load gcc/8.3.0 cuda/10.2

srun nvcc -o add gpu_vector_add.cu
srun ./add
#gcc -o add_cpu cpu_vec_add.c
#srun ./add_cpu
