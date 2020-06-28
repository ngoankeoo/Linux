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
echo "1. Hien thi ngay, thoi gian, ten may chu va nguoi dang nhap vao he thong"
echo "2. Kiem tra thu muc, neu chua co thi cho phep tao folder moi."
echo "3. Cho phep tao nhieu thu muc lien tiep."
echo "31.Cho phep xoa nhieu thu muc lien tiep."
echo "4. Kiem tra thu muc, va thuc hien xoa thu muc bat ky."
echo "5. Hien thi tai khoan nguoi dung."
echo "6. Hien thi tai khoan nhom nguoi dung."
echo "--------------------------------------"
echo "DANH MUC LIEN QUAN DEN INTERNET - DICH VU MANG"
echo "7. Hien thi dia chi IP va card mang."
echo "8. Hien thi ket noi mang (dinh tuyen mang)"
echo "9. Cap phat dia chi IP client tu dong"
echo "10.Hien thi cac dich vu mang"
echo "11.Xem cac tuong lua co trong he thong."
echo "12.Thoat"
#Dat cac su lua chon
read -p "Lua chon cac gia tri tu [1-12] " chon
case $chon in
1)
echo "Ngay hom nay la:$(date)"
uname -a
who
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

2)
echo "Nhap thu muc can kiem tra:"
read ten
if [ -d "$ten" ]; then
  echo "Thu muc nay da co roi."
  ls
else
  mkdir $ten
  echo "Thu muc $ten da duoc tao!"
  ls
fi
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

3)
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

31)
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

4)
ls
echo "Ban muon xoa thu muc nao:"
read ten
rm -r $ten
echo "Thu muc $ten da duoc xoa.!"
ls
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

5)
cat /etc/passwd
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

6)
cat /etc/group
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

7)
ifconfig -a
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

8)
netstat -nat
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

9)
dhclient
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

10)
service --status-all
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

11)
iptables -vL -t filter
iptables -vL -t nat
iptables -vL -t mangle
iptables -vL -t raw
iptables -vL -t security
read -p "Nhan phim [Enter] de tiep tuc.."
readEnterKey
;;

12)
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
