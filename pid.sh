#!/bin/bash

rm propath
ps aux | grep -v "0.0  0.0" > tmp
awk -F ' ' '{print $2}' tmp > tmp2

cat ./tmp2 | while read line
do
	readlink /proc/${line}/cwd >> propath
done
cat propath
rm propath
rm tmp tmp2
