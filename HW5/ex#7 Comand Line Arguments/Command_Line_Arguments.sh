#!/bin/bash

if [ -z "$1" ]; then
    echo "Error : missinput"
    echo "Usage : $0 <filename>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error : File '$1' not found."
    exit 1
fi

echo "Numbers of line in '$1': "
wc -l < "$1"
