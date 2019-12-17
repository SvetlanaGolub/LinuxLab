#!/bin/bash
cd
echo -e "\nДомашний каталог пользователя"
pwd
echo -e  "\nСодержит обычных файлов:"
find ~ -maxdepth 1 -type f -not -name ".*" | wc -l
echo -e "\nСкрытых файлов:"
find ~ -maxdepth 1 -type f -name ".*" | wc -l
