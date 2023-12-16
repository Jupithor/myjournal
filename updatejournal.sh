#!/usr/bin/bash
nextlogdate=$(date +'%A %d-%^b-%Y')
echo "$nextlogdate
===================
${1}

$(cat journal.txt)" > journal.txt
