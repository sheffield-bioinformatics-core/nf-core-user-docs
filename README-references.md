# Reference Genomes to be used with nf-core pipelines

The Sheffield Bioinformatics Core has made available several reference genomes for researchers at UoS. These genomes are compatiable with the [nf-core series of workflows](https://nf-co.re/) and have been obtained from [AWS iGenomes](https://ewels.github.io/AWS-iGenomes/). The script `get_igenomes.sh` was used for download.

The references files that are currently available are listed below. This should be sufficient to run RNA-seq and variant-calling pipelines on any of the listed organisms. The list below uses the naming convention of the [AWS iGgenomes project](https://ewels.github.io/AWS-iGenomes/).



## Available references

- Human
  - NCBI, GRCh38, GTF
  - NCBI, GRCh38, BED
  - NCBI, GRCh38, BWA
  - NCBI, GRCh38, STAR
  - NCBI, GRCh38, FASTA
  - GATK, GRCh38

- Mouse
  - NCBI, GRCm38, GTF
  - NCBI, GRChm8, BED
  - NCBI, GRCm38, BWA
  - NCBI, GRCm38, STAR
  - NCBI, GRCm38, FASTA

- Zebrafish
  - NCBI, GRCz10, GTF
  - NCBI, GRCz10, BED
  - NCBI, GRCz10, BWA
  - NCBI, GRCz10, STAR
  - NCBI, GRCz10, FASTA

- Drosophila
  - NCBI, build5.41, GTF
  - NCBI, build5.41, BED
  - NCBI, build5.41, BWA
  - NCBI, build5.41, STAR
  - NCBI, build5.41, FASTA


## How to use

In your nextflow run script, add the following option

```
--igenomes_base /fastadata/sbc/references
```

## Adding more genomes

The reference data in this directory are intended to be used with nf-core pipelines, which uses iGenomes as it's source of reference data. We do not plan to add other versions or organisms that are not available from iGenomes. Howeer, we do not plan to download and store all genomes and versions hosted by iGenomes. Reasonable requests for genomes to be added to this collection will be considered, but if you wish you can make your own copy of the `get_igenomes.sh` script and download files to your own shared folder.
