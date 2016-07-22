#!/bin/bash

file=~/configuration/dns-server/zones/$1.db
if [ ! -f "$file" ]
then
    echo "File '$file' not found"
    exit 1
fi

serial=$(grep -P '[0-9]{10}' "$file" | awk '{print $1}')
newserial=$(date +%Y%m%d)

if [ "${serial:0:8}" -eq "$newserial" ]
then
    i=$((${serial:8:2}+1))
    i=$(printf "%02d" $i)
    sed -i 's/'$serial'/'$newserial$i'/' "$file"
else
    sed -i 's/'$serial'/'$newserial'01/' "$file"
fi

./hup.sh
