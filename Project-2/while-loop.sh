#!/bin/bash

# Demosntrate the use of shitf and while loops

# Display the first three parameters

echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo 

# Lop through all the positional parameters
while [[ "${#}" -gt 0 ]]
do
    echo "Number of parameters: ${#}"
    echo "Number of parameters 1: ${1}"
    echo "Number of parameters 2: ${2}"
    echo "Number of parameters 3: ${3}"
    echo
    shift
done