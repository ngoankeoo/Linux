#!/bin/bash 

cols=`tput cols`
start=$((cols/2))
echo "Ban muon bao nhieu hang"
read rows
echo "Kieu su dung"
read char

tput clear
for((i=0;i<rows;i++))
do 
cols=$((start-i))
tput cup $i $cols

for((j=0;j<=i;j++))
do

if [ $i -eq $((rows-1)) ]
then
printf "$char "

elif [ $j -eq 0 ]
then
	printf "$char "
else

	if [ $j -eq $i ]
	then
		printf "$char "
	else
	printf "  "
	fi 

fi

done
done
echo""

