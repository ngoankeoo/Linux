#!/bin/bash
tong=0
tongle=0
tongchan=0
tongchia3=0
tongchia5=0
echo " Nhap so tu nhien N"
read n
for ((i=1; i<=$n; i++)) 
do
    echo –n "Cac so tu 1 den N la: " $i
    tong=$(($tong + $i))
    if [ $(($i % 5)) == 0 ]
	then
		tongchia5=$(($tongchia5 + $i))
	fi
    if [ $(($i % 2)) == 0 ]
	then
		tongchan=$(($tongchan + $i))
	fi
    if [ $(($i % 3)) == 0 ]
	then
		tongchia3=$(($tongchia3 + $i))
	fi
    if [ $(($i % 2)) != 0 ]
	then
		tongle=$(($tongle + $i))
	fi
done
    echo " Tong cac tu 1 den N la: " $tong
    echo " Tong cac so chan: " $tongchan
    echo " Tong cac so le: " $tongle
    echo " Tong cac so chia het cho 3: " $tongchia3
    echo " Tong cac so chia het cho 5: " $tongchia5
exit 0

