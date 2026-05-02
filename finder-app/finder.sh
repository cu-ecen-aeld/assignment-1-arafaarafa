#!/bin/sh 

# 1. Added spaces inside the brackets 
if [ $# -lt 2 ]; then 
    echo "Usage: $0 <directory> <search_string>" 
    exit 1 
fi 

var_dir=$1 
var_str=$2 

if [ ! -d "$var_dir" ]; then 
    echo "Error: Directory $var_dir does not exist." 
    exit 1 
fi 


var_noFiles=$(find "$var_dir" -type f | wc -l) 

var_noLines=$(grep -r "$var_str" "$var_dir" | wc -l) 

echo "The number of files are ${var_noFiles} and the number of matching lines are ${var_noLines}"