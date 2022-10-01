#!/bin/bash
nr_of_cols="`df -h | awk {'print $5'} | sed '1 d' | wc | awk {'print $1'}`"
max=80%
for (( counter=1; counter<=$nr_of_cols; counter++ )); do
    current=`df -h | awk {'print $5'} | sed '1 d' | head -$counter | tail -1`
    if [ ${current%?} -gt ${max%?} ]; then

        echo "Disk usage of `df -h | awk {'print $6'} | sed '1 d' | head -$counter | tail -1`"\
        "exceeded $max. It is already $current. Please investigate the issue and resolve the ticket."\
        "Server date: `date` "| mail -s "Disk Alert!!!" "eshqin.quluzade1@gmail.com"
    fi
done
