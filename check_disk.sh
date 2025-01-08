#!/bin/bash

#############################

# Check disk usage and alert if more than 90%
# Author: Siddharth

#############################

alert=90
df -H | awk '{print $5 " " $1}' | while read output;

do
#echo "Disk Detail: $output"

# create variable usage. output from $output variable goes to awk command. 
# awk command prints only the first column from the output. 
# This is then sent to cut command which removes any '%' signs
usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
fs=$(echo $output | awk '{print $2}')

#echo $usage

if [ $usage -gt $alert ]
then
echo "CRITICAL for $fs : $usage"
fi
done
