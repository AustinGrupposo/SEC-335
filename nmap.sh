#!/bin/bash
# Host Discovery via NMAP
# RUN WITH ELEVATED PERMS

nmap -sn 10.0.5.2-50 | grep 'report for' | awk '{print $5}' | tee sweep3.txt
