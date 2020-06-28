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

