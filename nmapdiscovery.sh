#!/bin/bash
# DNS Discovery via NMAP
# RUN WITH ELEVATED PERMS

sudo nmap 10.0.5.0-254 -p 53 --open -oG dns-servers2.txt
