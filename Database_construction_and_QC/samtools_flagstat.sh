#!/bin/bash
# Template from https://github.com/bahlolab/bioinfotools/blob/master/SAMtools/flagstat.md

BAM_DIR=input
THIS_DIR=$(pwd -P)

cd $BAM_DIR

for bamFile in *.bam
do
        samtools flagstat $bamFile -@ 10 >> ${THIS_DIR}/${bamFile}_flagstat.txt &
done
