# Install Miniconda as a Personal Software Module on Stanage

This guide describes how to install miniconda as a personal software module on Stanage.

Installing Nextflow and nf-core within a Conda environment using a personal miniconda module is currently the easiest way of making this software available for general use.

The steps required to install miniconda are described below:

Connect to Stanage via SSH and login to a worker node via an interactive session:

```shell
# login - substitute "username" with your own username
ssh username@stanage.shef.ac.uk

# request a command line only interactive session - extra resources prevent issues building conda env later
srun --cpus-per-task=2 --mem=8G --pty bash -i
```

Navigate the users home folder within the file store:

```shell
cd /users/$USER
```

Download and run the miniconda installer by running the following series of commands:

```shell
# download the latest installer file
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# check the hashes match
sha256sum Miniconda3-latest-Linux-x86_64.sh

# make the file executable
chmod +x Miniconda3-latest-Linux-x86_64.sh

# run the installer
bash Miniconda3-latest-Linux-x86_64.sh
```

The miniconda installer will now run and walk you through the install process. There are two **IMPORTANT** things you must take note of at this point:

1. You will have to overwrite the default install path when prompted by the miniconda installer to check the install path - the directory to which the install is attempted should be `/users/$USER/miniconda`.

```
Miniconda3 will now be installed into this location:
/<path>/<to>/miniconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/<path>/<to>/miniconda3] >>> /users/$USER/miniconda
```

2. **DO NOT** initialize miniconda at the end of the install process when prompted as shown here:

```
Do you wish the installer to initialize Miniconda3
by running conda init? [yes|no]
[yes] >>> no
```

Once the installer has run, delete the installation script:

```shell
rm Miniconda3-latest-Linux-x86_64.sh
```

Now make a modules folder and module file:

```shell
# modules folder
mkdir /users/$USER/modules

# module file
nano /users/$USER/modules/miniconda
```

Copy and paste the below into the nano editor that opens upon running the final command. Note that this file is in Tcl not BASh, so environmental variable handing is different from the normal `$USER` for username.

```
#%Module1.0#####################################################################
##
## user miniconda module file
##
################################################################################

proc ModulesHelp { } {

  global version
  puts stderr "Makes a user's personal install of Miniconda available."

}

module-whatis "Makes a user's personal install of Miniconda available."

# module variables

set MINICONDA_DIR /users/$env(USER)/miniconda/bin

prepend-path PATH $MINICONDA_DIR
```

Use “Ctrl + O” to write-out the changes, hit “Return” to confirm the file name, and then “Ctrl + X” to close the nano editor.

Now run the following lines to make your personal modules available for loading immediately and whenever you login:

```shell
echo "module use /users/$USER/modules" >> ~/.bashrc
source ~/.bashrc
```

The last thing to note here is that you should not load the anaconda environmental module available to all HPC users and the personal miniconda module you have just made at the same time.

For further information on making software available via a custom module file visit:

[Making software available via a custom module file](https://docs.hpc.shef.ac.uk/en/latest/referenceinfo/environment-modules/creating-custom-modulefiles.html)
