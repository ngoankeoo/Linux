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

