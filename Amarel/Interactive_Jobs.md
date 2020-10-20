# Interactive jobs

You can run interactive jobs using `srun`. This command gives access to a compute node with the requested resources.

As an example, the command

	srun --mem=2000 --time=30:00 --pty bash

requests 30 minutes of access to a compute node with 2000 MB of memory. For more options see the [cluster user guide](https://sites.google.com/view/cluster-user-guide#h.fkilox8omph1).

Once you are granted access to a compute node you can run your code on that node. To run `Python` interactively on the terminal use the command

	python

Note that you may need to load modules (such as `module load intel/19.0.3` and `module load python/3.5.2`) before running your code.

A more efficient way to run `Python` is using a script. The example below runs DSGRN using the script [num_par_nodes_DSGRN.py](num_par_nodes_DSGRN.py)

	python num_par_nodes_DSGRN.py
