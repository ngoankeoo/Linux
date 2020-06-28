#!/bin/bash
tien=0
echo "Nhap so km:"
read km
	if [ $km -ge 0 ]
then
 	if [ $km -le 1 ]
then
	echo "Tong so tien la : 10000"
elif [ $km -le 10 ]
then
	tien=$(($(($km - 1))*9000+10000))
	echo "Tong so tien la: $tien"
else
	tien=$(((9*9000)+10000+(($km-10)*8000)))
fi
else
	echo "Nhap so khong hop le"
fi
exit 0

