#! /bin/bash

git add .

echo -n "input comment ->"
read str
if [ -n "$str" ]; then
	git commit -m $str
else
	git commit -m $date
fi

dir=`pwd`
$dir=`basename ${dir}`

git remote add origin https://github.com/seisyo58/${dir}.git

git push origin master
