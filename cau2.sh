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

