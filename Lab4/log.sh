#!bin/bash
date +"%d/%m/%Y %H:%M" >> /tmp/run.log
echo "Hello, word!"
wc -l /tmp/run.log >&2
