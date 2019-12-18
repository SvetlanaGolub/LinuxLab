#!/bin/bash
ls ~/*.txt | cut -d/ -f4
cat ~/*.txt >> /tmp/size
echo -e "\nСуммарный размер в байтах:"
wc -c /tmp/size
echo -e "\nСуммарный размер в строках:"
wc -l /tmp/size

