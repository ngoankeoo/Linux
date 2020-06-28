#!/bin/bash
echo "Nhap a: "
read a
echo "Nhap b:"
read b
if [ $a -ne 0 ]; then
	x=$(echo "scale=2;( -$b / $a)"|bc)
	echo -n "Nghiem la: $x"
elif [ $b -ne 0 ]; then
	echo -n "Phuong trinh vo nghiem"
else 
	echo -n "phuong trin vo so nghiem"
fi

