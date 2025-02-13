#!/bin/bash

#############################

# Simple Scripts
# Author: Siddharth

#############################

# 1. Reading input and outputting

echo "Example1"
echo "Enter a number"
read num
echo "Number entered is ${num}"

###########################################

#2. if else example with argument passing

echo "Example2"
if [ $1 = "like" ]
then
echo "You like it"
else
echo "You don't like it"
fi

############################################

#3. for loop example

echo "Example3"
for ((i=0; i<5; i++))
do
echo $i
done

#show all files
for FILE in *
do
echo $FILE
done
############################################



