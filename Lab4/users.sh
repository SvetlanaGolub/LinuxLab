#!/bin/bash
date +"%d/%m/%Y %H:%M"
cat /etc/passwd | cut -d ':' -f1
uptime
