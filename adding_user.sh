#!/bin/bash

#################################

# Using functions to create user
# Author: Siddharth

#################################
#set -x
set -e
set -o pipefail
add_user()
{
    USER=$1
    PASS=$2

    useradd -m -p $PASS $USER
    echo "Succesfully added user"
}

#MAIN

add_user sidd_test password_test