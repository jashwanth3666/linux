Q. 4.	Write a shell script that displays a list of all the files in the current directory to which the user has read, write and execute permissions. 

#!/usr/bin/bash

read -p "Enter directory name: " dir

if [ -d "$dir" ]
then
    cd "$dir"
    ls > f
    exec < f

    while read file
    do
        if [ -f "$file" ]
        then
            if [ -r "$file" -a -w "$file" -a -x "$file" ]
            then
                echo "$file has all permissions"
            else
                echo "$file file does not have all permissions"
            fi
        fi
    done
fi
