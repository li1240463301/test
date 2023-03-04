#!/bin/bash
##统计日志IP数量那个最多
declare -A IP
while read line
do
	ip=`echo $line|awk '{print $1}' `
	let IP[$ip]++
done <$1
for i in  ${!IP[@]} 
do
echo "$i:: ${IP[$i]}"|sort -rn|hard -n 10
done
##统计页面
