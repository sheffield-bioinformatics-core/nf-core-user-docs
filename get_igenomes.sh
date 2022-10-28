#!/bin/bash

## get igenomes helper script
curl -fsSL https://ewels.github.io/AWS-iGenomes/aws-igenomes.sh > aws-igenomes.sh
chmod +x aws-igenomes.sh

## Get human references

./aws-igenomes.sh -g Homo_sapiens \
		 -s NCBI \
		 -b GRCh38 \
		 -t fasta 
		 
./aws-igenomes.sh -g Homo_sapiens \
                 -s NCBI \
                 -b GRCh38 \
                 -t gtf

./aws-igenomes.sh -g Homo_sapiens \
                 -s NCBI \
                 -b GRCh38 \
                 -t bed12

./aws-igenomes.sh -g Homo_sapiens \
                 -s NCBI \
                 -b GRCh38 \
                 -t bwa


./aws-igenomes.sh -g Homo_sapiens \
                 -s NCBI \
                 -b GRCh38 \
                 -t star


./aws-igenomes.sh -g Homo_sapiens \
                 -s GATK \
                 -b GRCh38 \


## Mouse References

./aws-igenomes.sh -g Mus_musculus \
		  -s NCBI \
		  -b GRCm38 \
		  -t gtf

./aws-igenomes.sh -g Mus_musculus \
                  -s NCBI \
                  -b GRCm38 \
                  -t bed12

./aws-igenomes.sh -g Mus_musculus \
                  -s NCBI \
                  -b GRCm38 \
                  -t bwa

./aws-igenomes.sh -g Mus_musculus \
                  -s NCBI \
                  -b GRCm38 \
                  -t star

./aws-igenomes.sh -g Mus_musculus \
                  -s NCBI \
                  -b GRCm38 \
                  -t fasta


## Zebrafish

./aws-igenomes.sh -g Danio_rerio \
                  -s NCBI \
                  -b GRCz10 \
                  -t gtf

./aws-igenomes.sh -g Danio_rerio \
                  -s NCBI \
                  -b GRCz10 \
                  -t bed12

./aws-igenomes.sh -g Danio_rerio \
                  -s NCBI \
                  -b GRCz10 \
                  -t bwa

./aws-igenomes.sh -g Danio_rerio \
                  -s NCBI \
                  -b GRCz10 \
                  -t star

./aws-igenomes.sh -g Danio_rerio \
                  -s NCBI \
                  -b GRCz10 \
                  -t fasta


## Fly

./aws-igenomes.sh -g Drosophila_melanogaster \
                  -s NCBI \
                  -b build5.41 \
                  -t gtf

./aws-igenomes.sh -g Drosophila_melanogaster \
                  -s NCBI \
                  -b build5.41 \
		  -t bed12

./aws-igenomes.sh -g Drosophila_melanogaster \
                  -s NCBI \
                  -b build5.41 \
		  -t bwa

./aws-igenomes.sh -g Drosophila_melanogaster \
                  -s NCBI \
                  -b build5.41 \
		  -t star

./aws-igenomes.sh -g Drosophila_melanogaster \
                  -s NCBI \
                  -b build5.41 \
		  -t fasta

