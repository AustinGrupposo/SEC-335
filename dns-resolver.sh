#!/bin/bash
# DNS Resolver for SEC-335
# Will need to be adjusted for other network ranges

for i in `seq ${2} ${3}`
do
	nslookup 10.0.5.$i 10.0.5.22 | grep "name ="

done