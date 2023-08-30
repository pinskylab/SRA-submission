#!/bin/bash

if [ -z "$1" ] 
then 
echo "No file with barcodes and sample names specified." 
echo "Correct usage: Rename_for_dDocent.sh barcodefile" 
exit 1 
else 
NAMES=( `cut -c 11-15 $1 `) 
BARCODES=( `cut -f1 $1 `) 
LEN=( `wc -l $1 `) 
LEN=$(($LEN - 1)) 

echo ${NAMES[0]} 
echo ${BARCODES[0]} 

for ((i = 0; i <= $LEN; i++)); 
do 
mv ${NAMES[$i]}.F.fq.gz APCL_${NAMES[$i]}.F.fq.gz  
mv ${NAMES[$i]}.R1.fq.gz APCL_${NAMES[$i]}.R1.fq.gz  
mv ${NAMES[$i]}-RG.bam APCL_${NAMES[$i]}-RG.bam  
mv ${NAMES[$i]}-RG.bam.bai APCL_${NAMES[$i]}-RG.bam.bai  
done
fi
