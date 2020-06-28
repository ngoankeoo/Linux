#!/bin/bash
#khoi tao vong lap
while :
    do
clear
#Hien thi Menu
echo "Ten Server - $(hostname)"
echo "--------------------------------------"
echo "             MAIN - MENU"
echo "--------------------------------------"
echo "DANH MUC LIEN QUAN DEN THU MUC - TAP TIN- NGUOI DUNG - NHOM"
echo "1. Kiem tra tai khoan co ton tai hay khong"
echo "2. Them moi tai khoan"
echo "3. Kiem tra ton tai , sua thong tin tai khoan"
echo "4. Them moi, kiem tra group"
echo "5. Them nhom group moi bat ki root"
echo "6 "
echo "DANH MUC LIEN QUAN DEN INTERNET - DICH VU MANG"
echo "7.Kiem tra dia chi mang cua may chu co dang ket noi internet hay khong"
echo "8. Hien thi tat ca cac card mang, bang dinh tuyen hoat dong cua mang may chu "
echo "9. hoat dong tuong lua "
echo "10. Thoat"
read -p "Lua chon cac gia tri tu [1-10] " chon
case $chon in
1)
#!/bin/bash
echo "Nhập user cần kiểm tra:"
read tenuser
tmp=$(grep -c ^$tenuser: /etc/passwd)
if [ $tmp -eq 0 ]
then
	echo "User $tenuser không có trong hệ thống"
else
	echo "User $tenuser có tồn tại trong hệ thống"
	
fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
2)
#!/bin/bash
if [ $(id -u) -eq 0 ]; then
	read -p "Nhap ten nguoi dung : " ten
	grep $ten /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$ten da ton tai roi. Vui long nhap ten khac!"
		exit 1
	else 	  read -s -p "Nhap mat khau cua nguoi dung : " matkhau	
                   pass=$(perl -e ' printf crypt($ARGV[0], "password")' $matkhau)
		  useradd -m -p $pass $ten
		[ $? -eq 0 ] && echo "User moi da duoc them vao he thong!" || echo "Loi them nguoi dung!"
	fi
else  echo "Chi co admin (root) moi co quyen them user vao he thong!!!"
	exit 2
fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
3)
#/bin/bash


echo "Nhap ten nguoi dung"
read ten

# Lenh kiem tra ton tai hay khong, bang cach kiem tra file /etc/passwd
ton_tai=$(grep -c ^$ten: /etc/passwd)
if [ $ton_tai -eq 0 ]; then
   echo "$ten khong ton tai"
 
else
   echo "$ten ton tai"
   echo "-----------------------------------"
   echo "Thay doi ten dang nhap cho nguoi dung"
   echo "Nhap ten moi cua nguoi dung"
   read ten_moi
   usermod -l $ten_moi $ten
   echo "-----------------------------------"
   echo "Thay doi ngay het han cua tai khoan"
   echo "Nhap ngay het han cua tai khoan dinh dang yyyy-mm-dd"
   read ngay_het_han
   usermod -e $ngay_het_han $ten_moi
   
fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
4)
#!/bin/bash
	read -p "Nhap ten nhom can tao moi : " nhom
	egrep $nhom /etc/group >/dev/null
	if [ $? -eq 0 ]; then
	    echo "$nhom da ton tai roi. Vui long nhap ten nhom khac!"
	else    
	    groupadd -r $nhom
	    echo "Da them nhom thanh cong !"
	    read -p "Ban co muon tiep them user moi vao group vua tao hay khong. Hay nhan Y de tiep tuc?" ok
	if [ $ok == 'y' ]; then
	  read -p "Nhap ten user moi:" ten
	  read -s -p "Nhap mat khau cua nguoi dung : " matkhau	
           pass=$(perl -e ' printf crypt($ARGV[0], "password")' $matkhau)
	  useradd -g $nhom -m -p $pass $ten
	  echo "Da them $ten thanh cong vao nhom $nhom !"
	else 	
           exit 0
	fi
 	fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
5)
#!/bin/bash
read -p "Nhap ten nhom can tao moi : " nhom
egrep $nhom /etc/group >/dev/null
if [ $? -eq 0 ]; then
	echo "$nhom da ton tai roi. Vui long nhap ten nhom khac!"
else    
	groupadd -r $nhom
	echo "Da them nhom thanh cong !"
fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
7)
#!/usr/bin/env bash
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "dia chi mang co ket noi internet"
else
    echo "dia chi mang khong co ket noi internet"
fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
8)
echo "IP va Card Mang:"
ifconfig -a
echo "Bang dinh tuyen"
netstat –r
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
9)
iptables -vL -t filter
iptables -vL -t nat
iptables -vL -t mangle
iptables -vL -t raw
iptables -vL -t security
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;
10)
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
