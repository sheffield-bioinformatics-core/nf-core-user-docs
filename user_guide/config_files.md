# Pipeline and Priority Access Queue Configuration Files

If you have specified a priority access queue in your submission script, you will need a personal configuration to send your jobs and not just your driver script to the appropriate queue. Navigate to the `config` sub-directory of your project folder and run the following:

```shell
nano queue.config
```

Then paste the following into the editor, ensuring you enter the correct queue name:

```
// priority access queue configuration

process {
  queue = 'queue-name.q'
  clusterOptions = { "-P queue-name -l rmem=${ (task.memory.toGiga() / task.cpus) }G" }
}
```

Save and exit by typing "Ctrl + O" then "Return" then "Ctrl + X".

Now append `-c ${CONFIG_DIR}/queue.config` to the `nextflow run` command on a new line in your submission script.