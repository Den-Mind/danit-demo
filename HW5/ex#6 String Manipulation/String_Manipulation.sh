#!/bin/bash
read -p "Enter a sentence : " sentence 

if [ -z "$sentence" ]; then
    echo "Error : missinput"
    exit 1
fi

read -ra words <<< "$sentence"

reversed=""
    for ((i = ${#words[@]} - 1; i >= 0; i--)); do
        reversed+="${words[i]}"
    done
echo "Reversed word by word : ${reversed% }"
