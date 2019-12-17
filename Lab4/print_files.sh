#!/bin/bash
echo -e "\nКаталоги:"
ls -al . | grep ^d
echo -e  "\nОбычные файлы:"
ls -al . | grep ^-
echo -e "\nСимвольные ссылки:"
ls -al . | grep ^l
echo -e "\nСимвольные устройства:"
ls -al . | grep ^c
echo -e "\nБлочные устройства:"
ls -al . | grep ^b
