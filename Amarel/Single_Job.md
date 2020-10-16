# Run a single job

This example uses the script `slurm_script_single_job.sh` to run a single job. The job consists of running the `Python` script `sample_script.py` with two command line arguments.

The resources needed by the job as well as other seetings are specified in the Slurm script `slurm_script_single_job.sh`. See the [cluster user guide](https://sites.google.com/view/cluster-user-guide#h.fhedzzob41u6) for more details.

To submit the job run the command

	sbatch slurm_script_single_job.sh

This will submit the job to the queue and it will run when resources become available. The check the status of you job use the command

	squeue -u NetID

This will tell you if you have any pending or running jobs. Check the output of your scripts to get the results of completed jobs. For the script in this example errors (if any) will be saved to a file `output_n_j.err `.
