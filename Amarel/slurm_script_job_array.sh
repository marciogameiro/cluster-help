#!/bin/bash

#SBATCH --job-name=run_job_array   # Job name
#SBATCH --output=output_%N_%j.out  # STDOUT output file
#SBATCH --error=output_%N_%j.err   # STDERR output file (optional)
#SBATCH --partition=main           # Partition (job queue)
#SBATCH --nodes=1                  # Number of nodes
#SBATCH --ntasks=1                 # Total number of tasks across all nodes
#SBATCH --cpus-per-task=1          # Number of CPUs (cores) per task (>1 if multithread tasks)
#SBATCH --mem=100                  # Real memory (RAM) required (MB)
#SBATCH --array=0-99               # Array job will submit 100 jobs
#SBATCH --time=00:01:00            # Total run time limit (hh:mm:ss)
#SBATCH --requeue                  # Return job to the queue if preempted
#SBATCH --export=ALL               # Export you current env to the job env

# Load necessary modules
module purge
module load python/3.5.2

# Run python script with input data. The variable ${SLURM_ARRAY_TASK_ID}
# is the array task id and varies from 0 to 99 in this example.
srun python sample_script.py input_data.dat ${SLURM_ARRAY_TASK_ID}
