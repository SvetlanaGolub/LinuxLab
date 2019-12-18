#!/bin/bash
echo -e "\nКаталоги:"
ls -al "$1" | grep ^d
echo -e  "\nОбычные файлы:"
ls -al "$1" | grep ^-
echo -e "\nСимвольные ссылки:"
ls -al "$1" | grep ^l
echo -e "\nСимвольные устройства:"
ls -al "$1" | grep ^c
echo -e "\nБлочные устройства:"
ls -al "$1" | grep ^b
