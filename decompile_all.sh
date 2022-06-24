#!/bin/bash

if [ $# -ne 2 ];then
	echo "usage: $0 <input_folder> <out_folder>"
	exit 0
fi

folder=${1%/}
out=$2
for file in `find ${folder} -type f`; do
	ext=${file##*.}
	if [ $ext == "lua" ]; then
		luadec $file > ${out}/${file##*/}
	fi

done