Q. To find factorial of a given integer. 
#!/usr/bin/bash

read -p "Enter number: " n

fact=1
for ((i=1; i<=n; i++))
do
    fact=$((fact * i))
done

echo "The factorial of $n is $fact"
