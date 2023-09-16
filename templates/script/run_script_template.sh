#!/bin/bash

## scheduler flags

# job name  >>> edit "pipeline_name" for the name of the pipeline you are running e.g. rnaseq <<<
#SBATCH --job-name=pipeline_name

# request resources for the nextflow driver job
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G

# send email >>> edit "username" <<<
#SBATCH --mail-user=username@sheffield.ac.uk
#SBATCH --mail-type=BEGIN,END,FAIL

# output log file
#SBATCH --output=nextflow.log


## load miniconda module and activate analysis environment

module purge
module load miniconda
source activate nf_env


## define and export variables

# prevent java vm requesting too much memory and killing run
export NXF_OPTS="-Xms1g -Xmx2g"

# path to singularity cache
export NXF_SINGULARITY_CACHEDIR="/users/$USER/.singularity"

# project name  >>> edit "project_name" so that it is the name of your project root directory <<<
PROJECT="project_name"

# project directories  >>> edit the name of the "filestore" e.g. /mnt/parscratch/users <<<
PARAM_DIR="/filestore/$USER/$PROJECT/params"
CONFIG_DIR="/filestore/$USER/$PROJECT/config"


## run command  >>> edit "pipeline" and "version" <<<

nextflow run nf-core/pipeline \
-r version \
-profile tuos_stanage \
-resume \
-params-file ${PARAM_DIR}/nf-params.json
