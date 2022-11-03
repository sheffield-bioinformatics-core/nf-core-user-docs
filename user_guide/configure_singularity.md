# Configure Singularity for use with Nextflow and nf-core

The Sheffield Bioinformatics Core currently supports running nf-core pipelines with Singularity containers; Singularity images will be downloaded automatically before execution of the pipeline.

When you run nextflow for the first time, Singularity will create a hidden directory `.singularity` in your `$HOME` directory `/home/$USER` which has very very limited (10GB) space available. It is therefore a good idea to create a directory somewhere else (e.g., `/data/$USER`) with more room and link the locations. To do this, run the following series of commands:

```shell
# change directory to $HOME
cd $HOME

# make the directory that will be linked to
mkdir /data/$USER/.singularity

# link the new directory with the existing one
ln -s /data/$USER/.singularity .singularity
```