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

