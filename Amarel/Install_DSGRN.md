# Install DSGRN

Instructions on how to install DSGRN using the modules and libraries available on the system.

## Load modules

First load the necessary modules

	module load python/3.5.2
	module load gcc/5.4

The `gcc` module is only necessary when installing or compiling software using `C/C++`. The `Python` module needs to be loaded before running `DSGRN` or `Python`. You can add the necessary load commands to your shell configuration file (`.bashrc` assuming you are using `bash`) so they will be loaded automatically every time you login.

## Install pyCHomP

Next install pyCHomP

	git clone https://github.com/marciogameiro/pyCHomP.git
	cd pyCHomP
	./install.sh --user
	cd ..

## Install DSGRN

Finally install DSGRN

	export CC=/opt/sw/packages/gcc/5.4/bin/gcc
	export CXX=/opt/sw/packages/gcc/5.4/bin/g++

	git clone https://github.com/marciogameiro/DSGRN.git
	cd DSGRN
	./install.sh --user
	cd ..

## Install dependencies

If necessary `Python` dependencies can be installed with the command

	pip install --user graphviz progressbar2 mpi4py jupyter ipython
