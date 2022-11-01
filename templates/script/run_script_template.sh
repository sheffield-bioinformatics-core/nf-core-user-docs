#!/bin/bash

## SGE scheduler flags

# job name  >>> edit "pipeline_name" for the name of the pipeline you are running e.g. rnaseq <<<
#$ -N nf-pipeline_name

# specify queue and project for the nextflow driver job  >>> edit if using a priority queue else delete both <<<
#$ -q queue_name.q
#$ -P queue_name

# request resources for the nextflow driver job
#$ -pe smp 1
#$ -l rmem=2G

# export environmental variables in current shell environment to job
#$ -V

# send email >>> edit "username" <<<
#$ -M username@sheffield.ac.uk
#$ -m beas

# merge standard error stream into the standard output stream
#$ -j y

# output log file
#$ -o nextflow.log


## load miniconda module and activate analysis environment

module load miniconda
source activate nf_env


## define and export variables

# prevent java vm requesting too much memory and killing run
export NXF_OPTS="-Xms1g -Xmx2g"

# path to singularity cache
export NXF_SINGULARITY_CACHEDIR="/home/$USER/.singularity"

# project name  >>> edit "project_name" so that it is the name of your project root directory <<<
PROJECT="project_name"

# project directories  >>> edit the name of the "filestore" e.g. fastdata <<<
PARAM_DIR="/filestore/$USER/$PROJECT/params"
CONFIG_DIR="/filestore/$USER/$PROJECT/config"


## run command  >>> edit "pipeline" and "version" <<<

nextflow run nf-core/pipeline \
-r version \
-profile sbc_sharc \
-resume \
-params-file ${PARAM_DIR}/nf-params.json

