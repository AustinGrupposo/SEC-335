#!/bin/bash
# Reverse DNS Lookup via NMAP
# RUN WITH ELEVATED PERMS

sudo nmap -sL 10.0.5.0-254 --dns-servers 10.0.5.22 | grep ".local" | cut -b 1-21 --complement
