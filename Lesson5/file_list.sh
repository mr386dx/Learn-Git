#!/bin/bash
#скрипт, который выводит список файлов в папке /var/log, сортирует по размеру и выводит в текстовый файл file_list.txt
ls /var/log -lS | tee file_list.txt

