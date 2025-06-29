Q. To accepts a list of file names as its arguments, counts and reports the occurrence of     each word that is present in the first argument file on other argument files.

#!/usr/bin/bash

if [ $# -eq 0 ]
then
    echo "No arguments"
else
    tr " " "\n" < "$1" > temp
    shift

    for i in "$@"
    do
        tr " " "\n" < "$i" > temp1
        y=`wc -l < temp`
        j=1

        while [ $j -le $y ]
        do
            x=`head -n $j temp | tail -1`
            c=`grep -c "$x" temp1`
            echo "$x $c"
            j=`expr $j + 1`
        done

    done
fi


------------------------------------------------------------
ChatGPT code:

#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 file1 file2 [file3 ...]"
    exit 1
fi

words=$(tr ' ' '\n' < "$1" | sort -u)

shift

for file in "$@"; do
    echo "Occurrences in $file:"
    for word in $words; do
        count=$(grep -wo "$word" "$file" | wc -l)
        echo "$word $count"
    done
done

