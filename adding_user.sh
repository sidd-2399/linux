#!/bin/bash

#################################

# Using functions to create user
# Author: Siddharth

#################################
#set -x
set -e
set -o pipefail
add_user() {
    USER=$1
    PASS=$2

    ENCRYPTED_PASS=$(openssl passwd -6 "$PASS")
    useradd -m -p "$ENCRYPTED_PASS" "$USER"
    echo "Successfully added user: $USER"
}


#MAIN

add_user sidd_test password_test
