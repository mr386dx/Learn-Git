#!/bin/bash
#Скрипт для поиска исполняемых файлов в папке /usr
IFS=:
for folder in /usr
do
	echo "$folder:"
	for file in $folder/*
	do
		if [ -x $file ]
		then 
			echo " $file"
		fi
	done
done


