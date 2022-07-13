#!/bin/bash

echo "Input the name of the process you want to stop"
read name

pid=$( pgrep -f $name | head -1 )

if [[ $pid -gt 0 ]]
then 
	sudo kill -18 $pid
	echo " Process $name pid $pid suspended "
	sleep 30
#sudo syst1emctl start apache2    #debugging

else echo "There is no running process with name $name"

fi

