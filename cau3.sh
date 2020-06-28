#/bin/bash


echo "Nhap ten nguoi dung"
read ten

ton_tai=$(grep -c ^$ten: /etc/passwd)
if [ $ton_tai -eq 0 ]; then
   echo "$ten khong ton tai"

else
   echo "$ten ton tai"

fi
