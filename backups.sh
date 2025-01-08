#!/bin/bash

#################################

# Script for taking backups
# Author: Siddharth

#################################

set -e
set -o pipefail

src_dir=/home/code/prac
trgt_dir=/home/code/backups

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

backup_file=$trgt_dir/$curr_timestamp.tgz

echo "Taking backup on $curr_timestamp"

tar czf $backup_file $src_dir

echo "${backup_file} backup complete!" 