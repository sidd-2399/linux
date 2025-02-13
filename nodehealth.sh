#!/bin/bash

#############################

# Script to check node health
# Author: Siddharth

#############################

set -x # Debug mode

echo "===== Disk Space ====="
df -h

echo "===== Memory ====="
free -g

echo "===== CPU ====="
nproc

echo "===== Running Processes ====="
ps aux --sort=-%mem | head -10  # Show top 10 processes by memory usage
