#!/bin/bash
if [ -z $1 ]; then
    echo "Please enter argument" >&2
else
    if [ $1 = "redhat" ]; then
        echo "fedora"
    elif [ $1 = "fedora" ]; then
        echo "redhat"
    else
        echo "redhat|fedora"
    fi
fi
