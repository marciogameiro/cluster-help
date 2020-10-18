# Install CMGDB using Anaconda

Install CMGDB using [Anaconda](https://www.anaconda.com/distribution/).

## Install Anaconda

First install Anaconda

	wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
	bash Anaconda3-2020.07-Linux-x86_64.sh

Type `source .bashrc` (or close your terminal and login again) for the configurations to take effect.

## Update Anaconda

Update Anaconda and Python

	conda update conda
	conda update anaconda
	conda update python

## Install dependencies

	conda install -c anaconda cmake
	conda install -c anaconda graphviz
	conda install -c anaconda gmp

	conda install -c conda-forge boost
	conda install -c conda-forge sdsl-lite

	conda install -c anaconda gcc_linux-64
	conda install -c anaconda gxx_linux-64

	pip install graphviz jupyter ipython

## Install CMGDB

Finally install CMGDB

	export CC=x86_64-conda_cos6-linux-gnu-gcc
	export CXX=x86_64-conda_cos6-linux-gnu-g++

	git clone https://github.com/marciogameiro/CMGDB.git
	cd CMGDB
	./install.sh
	cd ..
