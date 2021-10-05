#!/usr/bin/bash
yesterday=$(date --date="-1 day" +"%A")

if [ $yesterday == "Sunday" ];
then
	yesterday=$(date --date="-3 days" +"%A %d-%m-%Y")
else
	yesterday=$(date --date="-1 day" +"%A %d-%m-%Y")
	
fi

echo "$yesterday
===================
${1}

$(cat dagbog.txt)" > dagbog.txt
