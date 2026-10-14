#!/bin/bash

target=$(( ( RANDOM % 100) + 1 ))
max_attempts=5

echo "---- Guess Number ----"
echo "Я загадав число від 1 до 100. У вас є $max_attempts спроб."

for (( attempt=1; attempt<=max_attempts; attempt++ )); do
    read -p "Спроба $attempt/$max_attempts. Введіть ваше число: " guess
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Будь ласка, введіть ціле число!"
        ((attempt--))
        continue
    fi
    
    if [ "$guess" -eq "$target" ]; then
        echo " Вітаємо! Ви вгадали правильне число ($target)."
        exit 0
    elif [ "$guess" -gt "$target" ]; then
        echo "Занадто високо."
    else 
        echo "Занадто низько."
    fi
done

echo "Вибачте, у вас закінчилися спроби. Правильним числом було $target."
exit 1
