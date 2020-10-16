# Interactive jobs

We can run interactive jobs using the command `srun`. This command gives access to a compute node with the requested resources.

As an example, the command

	srun --mem=2000 --time=30:00 --pty bash

requests 30 minutes of access to a compute node with 2000 MB of memory. For more options see the [user guide](https://sites.google.com/view/cluster-user-guide#h.fkilox8omph1).

Once we are granted access to a compute node we can run our code on that node. We can run `Python` interactively using the command

	python

Notice that we may need to load modules (such as `module load python/3.5.2`) before running our code.

A more efficient way to run `Python` is to use a script. The example below runs DSGRN using the script [num_par_nodes_DSGRN.py](num_par_nodes_DSGRN.py)

	python num_par_nodes_DSGRN.py
