#!/bin/bash
#Скрипт для поиска исполняемых файлов в папке /usr
for file in `find /usr/bin -type f -executable`
do
	echo "$file" >> executable.txt
done


