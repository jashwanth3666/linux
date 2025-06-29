Q. Write a shell script that receives any number of file names as arguments checks if   every argument supplied is a file or a directory and reports accordingly. Whenever the argument is a file, the number of lines on it is also reported.

#!/usr/bin/bash

for fname in "$@"
do
    if [ -f "$fname" ]
    then
        echo "$fname is a file"
        echo "Number of lines in $fname:"
        wc -l "$fname"
    elif [ -d "$fname" ]
    then
        echo "$fname is a directory"
    else
        echo "$fname does not exist"
    fi
done
