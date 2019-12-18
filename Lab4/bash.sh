#!/bin/bash
grep 000000 ~/bash.txt >> /tmp/zeros
grep -v 000000 ~/bash.txt >> /tmp/nozeros
head -n10 /tmp/zeros
tail -n10 /tmp/zeros
head -n10 /tmp/nozeros
tail -n10 /tmp/nozeros
