#!/bin/bash
# Script to ping range in a timely manner
# Usage: bash pingrange.sh X.X.X 1 10 (will ping x.x.x.1-x.x.x.10)

for i in `seq ${2} ${3}`
do
	fping -c1 -t500 ${1}.${i} > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "IP ${1}.${i} is UP" >> sweep2.txt
	fi
done