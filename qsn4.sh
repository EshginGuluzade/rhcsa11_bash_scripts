#!/bin/bash
usernames="usernames.txt"
passwords="passwords.txt"
logs="qsn4.log"
COUNT=1

while read user; do
    if  id -u $user > /dev/null 2>&1; then
        echo `date` " --> User $user already exists. Skipping..." >> $logs
        COUNT=$(( COUNT + 1 ))
    else
        useradd $user
        echo `date` " --> User $user created" >> $logs
        head -$COUNT < $passwords | tail -1 | passwd $user --stdin
        echo `date` " --> Password set for user $user" >> $logs
        COUNT=$(( COUNT + 1 ))
    fi
    tar -zcpf /backups/"$(date +"%d-%m-%Y")"-backup_$user.tar.gz /home/$user 2> /dev/null
done < $usernames
