#!/bin/bash
#khoi tao vong lap
while :
do
clear
#Hien thi Menu
echo "Ten Server - $(hostname)"
echo "--------------------------------------"
echo " MAIN - MENU"
echo "--------------------------------------"
echo "1. Cho phep tao nhieu thu muc lien tiep."
echo "2.Cho phep xoa nhieu thu muc lien tiep."
echo "3.Thoat"
read -p "Lua chon cac gia tri tu [1-3] " chon
case $chon in

1)
echo "Nhap so thu muc tao:"
read ten
for ((i=1;i<=$ten;i++))
do
mkdir DH7C4$i
done
ls
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

2)
echo "Nhap so thu muc xoa:"
read ten
for ((i=1;i<=$ten;i++))
do
rm -r DH7C4$i
done
ls
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
3)
echo "Tam biet.."
exit 0
;;

*)
echo "Loi: Gia tri lua chon khong dung?"
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
esac
done

