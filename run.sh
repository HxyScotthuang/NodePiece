#!/bin/bash
#
#SBATCH --job-name=Nodepiece
#SBATCH --gres=gpu:1
#SBATCH --time=12:00:00 
#SBATCH --partition=short


module load Anaconda3
module load CUDA/10.1.243-GCC-8.3.0
eval "$(conda shell.bash hook)"
source activate $DATA/nodepiece-env

which python

cd inductive_lp

python -u run_ilp.py $@ 

