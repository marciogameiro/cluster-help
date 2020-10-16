# Job array

This example uses the script `slurm_script_job_array.sh` to run a job array, that is, it runs the same `Python` script `sample_script.py` multiple times with the array task id (array index) as an input argument. This array index can be used to run the script in different modes or with different input arguments. See the [cluster user guide](https://sites.google.com/view/cluster-user-guide#h.rg45vcym6ez5) for more details.

To submit the job run the command

	sbatch slurm_script_job_array.sh

This will submit the job array to the queue and it will run when resources become available. The check the status of you job use the command

	squeue -u NetID

This will tell you if you have any pending or running jobs. Check the output of your scripts to get the results of completed jobs. For the script in this example errors (if any) will be saved to a file `output_n_j.err `.
