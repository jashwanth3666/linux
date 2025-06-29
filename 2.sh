Write a shell script that accepts a file name, starting and ending line numbers as arguments and displays all the lines between the given line numbers. 

#!/usr/bin/bash

read -p "Enter file name: " f
read -p "Enter starting position: " st
read -p "Enter ending position: " end

echo "The lines between $st and $end from $f are:"

if [ $st -lt $end ] 
then
    n1=`expr $st + 1`
    n2=`expr $end - 1`
    head -$n2 "$f" | tail +$n1
elif [ $st -gt $end ]
then
    n3=`expr $st - 1`
    n4=`expr $end + 1`
    head -$n3 "$f" | tail +$n4
fi

----------------------------------------------
#!/usr/bin/bash

read -p "Enter file name: " f
read -p "Enter starting position: " st
read -p "Enter ending position: " end

echo "The lines between $st and $end from $f are:"
sed -n "$st,$end p" "$f"

