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


