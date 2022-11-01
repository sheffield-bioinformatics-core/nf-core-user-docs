# Setup your Project and Configure your Run

Whichever file store you decide to locate your project root directory in, the assumed project sub-directory structure within this guide is as follows:

```
/filestore/$USER/
│
└── project_root/
    │
    ├── config
    ├── params
    ├── sample_sheet
    └── script
```

There are three things you will require to run an nf-core pipeline:

1. A sample sheet
2. A pipeline launcher parameter configuration file
3. A submission script

You can find nf-core pipelines by visiting [https://nf-co.re/pipelines](https://nf-co.re/pipelines). Each pipeline page has more information on how to use the pipeline as well as a full description of sample sheet requirements and formatting.

Your sample sheet should be located inside your `sample_sheet` sub-directory.

The general launch command in the script template below assumes you have configured your specific run using an nf-core pipeline launcher. For example, the launcher for the nf-core/rnaseq pipeline that can be found [here](https://nf-co.re/launch?pipeline=rnaseq). The parameters specified for your run using the launcher should be saved in a file named `nf-params.json` within the `params` sub-directory of your project root.

To create your run script, navigate to the `script` sub-directory and run the following:

```shell
nano nf_submission.sh
```

Paste the contents of the template file linked below into the editor ensuring to change the generic information for your own where indicated in the comment lines.

[Template run submission script](../templates/script/run_script_template.sh)

Now save and exit by typing "Ctrl + O" then "Return" then "Ctrl + X".

**OPTIONAL:** If you have specified a priority access queue in your submission script, you will need a personal configuration to send your jobs and not just your driver script to the appropriate queue. Navigate to the `config` sub-directory of your project folder and run the following:

```shell
nano personal.config
```

Then paste the following into the editor, ensuring you enter the correct queue name:

```
process {
  queue = 'queue-name.q'
  clusterOptions = { "-P queue-name -l rmem=${task.memory.toGiga()}G" }
}
```

Save and exit by typing "Ctrl + O" then "Return" then "Ctrl + X".

Now append `-c ${CONFIG_DIR}/personal.config` to the `nextflow run` command on a new line in your submission script.

Once you have fulfilled all of the requirements above, you should be ready to submit your batch job to the SGE scheduler on ShARC. From the project root, type the following:

```bash
qsub ./scripts/nf_submission.sh
```

Your pipeline run should start momentarily. Good Luck!
