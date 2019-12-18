#!/bin/bash
du -ah --max-depth=1 ~ | cut -d  '/' -f1,4 | sort -n
