#!/bin/bash

echo " PLease input your ISBN code (for example ISBN 978-3-16-148410-0) "
read code
echo " Your code is $code. Checking......... "
echo $code | awk '/^(ISBN\s)?(978-)([-0-9X]{10}|[-0-9X]{13})$/' 

