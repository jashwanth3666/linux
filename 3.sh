Q. Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments to it.

#!/usr/bin/bash

read -p "Enter a word to be deleted: " word
read -p "Enter file name: " fname

echo "Lines in $fname after deleting the word '$word':"

grep -v "$word" "$fname"
