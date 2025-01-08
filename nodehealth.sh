#!/bin/bash

#############################

# Script to check node health
# Author: Siddharth

#############################

set -x #debug mode

echo "Disk Space"
df -h

echo "Memory"
free -g

echo "CPU"
nproc

echo "Proccess IDs"
awk
