#!/bin/bash
if [ `id -u` -ne 0 ]; then
    echo "This script must be run only by root user"
    exit 1
else
    if [ -z $1 ]; then
        echo "Please enter argument!!!"
    elif [ $# -lt 3 ]; then
        echo "Please enter more than 3 arguments"
        exit 1
    else
        for i in $@; do
            echo $i
        done
    fi
fi
