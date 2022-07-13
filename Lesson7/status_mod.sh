#!/bin/bash

echo "Input the name of the process you want to stop"
read name

pid=$( pgrep -f $name | head -1 )

if [[ $pid -gt 0 ]]
then 

	sudo kill -15 $pid
echo " Process $name pid $pid stoped "
echo "Will check status of the process $name in 10 sec."
sleep 10
#sudo systemctl start apache2    #debugging
pid1=$( pgrep -f $name | head -1 )
	if [[ $pid1 -gt 0 ]]
	then sudo kill -9 $pid1
		echo "Process $name pid $pid1 killed!"
	else echo "Everything is OK, the process $name sucessfully stoped"
	fi
else echo "There is no running process with name $name"

fi

