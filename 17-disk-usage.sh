#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
    #here E is an Expression, | is OR, here you do not want these lines.

DISK_THRESHOLD=1
# Usually we give 70% but our Disk is not used more than 70.
message=""

while IFS= read line
do
    #Here we are printing only the 6th Fragment and removing the % and Last Fragement
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)

    #Also we need Disk Partition
    partition=$(echo $line | awk '{print $1F}')

    #Condition is usage should be greather than Threshold
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage<br>" 
        #+= --> It will add Multiple Entries without overwrite. you can remove + and check
    fi
done <<< $DISK_USAGE #<<< --> This is for Command output.
echo -e "Message: $message" # we are enabling the special character.

#echo "$message" | mail -s "High Disk usage" darshanvd13197@gmail.com

# Mail      which team      Alert_Type       Body msg   To Email                    Subject Email
sh mail.sh "DevOps Team" "High Disk Usage:" "$message" "darshanvd13197@gmail.com" "ALERT HIGH DISK USAGE"