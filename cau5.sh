#!/bin/bash
read -p "Nhap ten nhom can tao moi : " nhom
egrep $nhom /etc/group >/dev/null
if [ $? -eq 0 ]; then
	echo "$nhom da ton tai roi. Vui long nhap ten nhom khac!"
else    
	groupadd -r $nhom
	echo "Da them nhom thanh cong !"
fi

