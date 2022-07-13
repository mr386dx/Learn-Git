#!/bin/bash

echo "Input the name of the process you want to stop"
read name

pid=$( pgrep -f apache2 | head -1 )

if [[ $pid -gt 0 ]]
then 

	sudo kill -15 $pid
echo " Process $name pid $pid stoped "

else echo "There is no running process with name $name"

fi


