#!/bin/bash

BAM_DIR=tmp
THIS_DIR=$(pwd -P)

cd $BAM_DIR

for bamFile in *flagstat.txt
do
	percentage=`grep "mapped (" $bamFile | cut -d " " -f 5 | sed 's/(//g'` 
	echo "$bamFile,$percentage"  >> All_Files_percentages.csv &       

done
