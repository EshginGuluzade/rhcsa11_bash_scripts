#!/bin/bash
echo "Please enter a value: "
read VALUE
if [ $VALUE -gt 200 ]; then
    echo "$VALUE is more than 200"
elif [ $VALUE -lt 100 ]; then
    echo "$VALUE is less than 100"
else
    echo "Bingo"
fi
