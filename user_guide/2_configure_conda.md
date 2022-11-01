# Load and Configure Conda

Run the following commands in order and follow any prompts as appropriate:

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

# Install Nextflow and nf-core within a Conda Environment

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

When you are finished, you can deactivate your conda environment using the command `conda deactivate`.

Although you should not yet do this, should you wish to unload your personal miniconda module you can do so by running `module unload miniconda`.

Step 5. describes the process of running an nf-core pipeline using Nextflow. You do not have to have a conda environment active for this part of the process as it will be loaded as part of your submission script, but you should not unload the miniconda module at this point.
