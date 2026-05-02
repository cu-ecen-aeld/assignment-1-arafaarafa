#!/bin/sh


if [ $# -lt 2 ]; then
    echo "Usage: $0 <file_path> <string>"
    exit 1
fi


var_dir_file="$1"
var_str="$2"


if install -D /dev/null "$var_dir_file"; then
    echo "File handled successfully"
else
    echo "The file could not be created or accessed"
    exit 1
fi


if echo "$var_str" > "$var_dir_file"; then
    echo "String added successfully"
else
    echo "Failed to add string to file"
    exit 1
fi