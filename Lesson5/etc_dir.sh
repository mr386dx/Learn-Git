#!/bin/bash
#скрипт проверяет файлы в папке /etc которые имеют аттрибут директории и выводит их файл etc_dir.txt
for file in /etc/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory" | tee -a etc_dir.txt
	fi
done

