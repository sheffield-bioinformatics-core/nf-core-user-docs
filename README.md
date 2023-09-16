## Running Nextflow with nf-core Pipelines on TUoS Stanage Cluster

This guide describes the main steps required for setting up Nextflow and nf-core on TUoS Stanage Cluster.

The simplest solution to running Nextflow and nfcore pipelines on Stanage while ensuring all dependencies are available and correctly managed is to install Nextflow and nf-core into a Conda environment using a personal install of miniconda. These processes are described as part of this guide.

Click on a link to get started:

1. [Install miniconda as a personal software module](./user_guide/install_miniconda.md)
2. [Configure Conda and setup a Nextflow environment](./user_guide/configure_conda_and_nextflow.md)
3. [Setup your project directory and configure your run](./user_guide/project_setup.md)
4. [Job Submission](./user_guide/job_submission.md)

A custom institutional configuration profile `tuos_stanage` has been provided by for users by SBC which will automatically load pre-tested pipeline specific configurations to take care of resource requests for you. For more information see [here](https://github.com/nf-core/configs/blob/master/docs/tuos_stanage.md).

If you have any questions or issues not addressed by this guide, please contact: [bioinformatics-core@sheffield.ac.uk](mailto:bioinformatics-core@sheffield.ac.uk)