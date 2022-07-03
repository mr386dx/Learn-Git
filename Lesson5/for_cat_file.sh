#!/bin/bash
file="some_file.md"
for var in $(cat $file)
do
	echo "$var"
done

