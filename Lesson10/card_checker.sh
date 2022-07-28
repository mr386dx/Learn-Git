#!/bin/bash

echo " PLease input your credit card number with date (and secret code from other side)"
sleep 5
echo "It was a joke! no need your secret code.."
echo "omly your card number with expiration date, like 1234-5678-1324-5678 11/85"
read code
echo " Your code is $code. Checking......... "
echo $code | awk -e '/^([0-9]{4}-){3}([0-9]{4})\s(0[1-9]|1[0-2])\/[0-9]{2}$/{print $0}' 

