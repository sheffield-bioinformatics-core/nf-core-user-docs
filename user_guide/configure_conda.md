# Install Nextflow and nf-core within a Conda Environment

This guide describes the process of configuring conda and creating a conda environment with Nextflow and nf-core installed.

These instructions require that you have the miniconda distribution of conda available as a personal software module. Please refer to the relevant section of the [SBC Guide to Running Nextflow with nf-core Pipelines on ShARC](https://github.com/sheffield-bioinformatics-core/nf-core_user_docs#readme) if you have not already setup miniconda as a personal software module.

## Load and Configure Conda

Run the following commands in the order provided and follow any prompts as appropriate:

```shell
# load the miniconda module - if not already loaded
module load miniconda

# disable base environment auto-activation
conda config --set auto_activate_base false

# add the bioconda and conda-forge channels to conda configuration
conda config --add channels bioconda
conda config --add channels conda-forge

# set channel_priority to "strict"
conda config --set channel_priority strict

# ensure conda is up-to-date
conda update conda
```

## Create a Conda Analysis Environment with Nextflow and nf-core

Run the following commands in order and follow any prompts as appropriate:

```shell
# make the "nf_env" environment (in /home/$USER/.conda/envs/nf_env)
conda create --name nf_env nextflow nf-core

# activate the environment
source activate nf_env

# ensure all packages are up-to-date
conda update --all
```

You can now test the install has worked by running the following:

```shell
# test the environment is working
nextflow info

# test functionality
nextflow run hello
```

When you are finished, you can deactivate your conda environment using the command `conda deactivate`

Should you wish to unload your personal miniconda module you can do so by running `module unload miniconda`

