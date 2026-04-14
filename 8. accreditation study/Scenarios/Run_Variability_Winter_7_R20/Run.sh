#!/bin/bash
#SBATCH --job-name=ref_nc              # create a short name for your job
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=1                          # total number of tasks across all nodes
#SBATCH --cpus-per-task=12                  # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=9G                    # memory per cpu-core
#SBATCH --time=48:00:00                     # total run time limit (HH:MM:SS)
#SBATCH --output="test.out" 
#SBATCH --error="test.err" 
#SBATCH --mail-type=end                    # notifications for job done & fail
#SBATCH --mail-user=wricks@princeton.edu  # send-to address
module purge
module add julia/1.6.1
module add gurobi/9.0.1
julia --project="/tigress/wricks/GenX_Test/GenX.jl-main" Run.jl
date
