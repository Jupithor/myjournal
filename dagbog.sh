#!/usr/bin/bash
lastlogdate=$(head -n 1 dagbog.txt)
weekday=$(date -d "$lastlogdate 1 day" +%A)

if [ $weekday == "Saturday" ];
then
	nextlogdate=$(date -d "$lastlogdate 3 days" +'%A %d-%^b-%Y')
else
	nextlogdate=$(date -d "$lastlogdate 1 day" +'%A %d-%^b-%Y')
fi

echo "$nextlogdate
===================
${1}

$(cat dagbog.txt)" > dagbog.txt
