Q. To list all of the directory files in a directory.
#!/usr/bin/bash

read -p "Enter directory name: " dname

echo "The list of directory files in the directory $dname are:"
cd "$dname"
ls -l | grep '^d'
