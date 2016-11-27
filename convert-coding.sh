# /*************************************************************************
# 	> File Name: convert-coding.sh
# 	> Author: ma6174
# 	> Mail: ma6174@163.com 
# 	> Created Time: 日 11/27 12:50:44 2016
#  ************************************************************************/
# 

#!/bin/bash

echo `pwd`
echo $#

if [ $# -lt "2" ]; then
	echo "Usage: $0 <source_dir> <target_dir>"
	exit 0
fi

echo "start converting..."

if [ ! -e "$2" ]; then
	mkdir $2
fi

if [ -f "$2" ]; then
	rm -f $2
	mkdir $2
fi

for file01 in `ls -a $1`
do
	if [ -f "$1/$file01" ]; then
		iconv -f UTF-16 -t UTF-8 $1/$file01 > $2/$file01
	fi
done
