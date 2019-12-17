#!/bin/bash
echo -e "\nПроцессов пользователя:"
whoami
ps -u ${User} | wc -l
echo -e "\nПроцессов пользователя root:"
ps -u root | wc -l
