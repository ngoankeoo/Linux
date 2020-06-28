#!/bin/bash

echo "LY THI NGOAN"
echo "------Tao group moi------ "

read -p  "Vui long nhap ten group: " group_name
group_exist=$(cat /etc/group|grep -w $group_name | cut -d ":" -f1 | grep -w $group_name |wc -l)
if [  $group_exist -gt 0 ] ; then
	echo "Group $group_name da ton tai:"
	users="$(cat /etc/group | grep $group_name | cut -d ":" -f4)"
	users=${users//,/ }
	for user in $users 
	do
		echo $user
		sudo userdel -r ${user} >/dev/null 2>&1 
	done
	echo "Da xoa cac user trong group $group_name"
else
	echo "Group $group_name chua ton tai!"
	sudo groupadd $group_name
	echo "Tao thanh cong group : $group_name !"
fi
echo ""
while :
do

	echo "------Them user vao group------"
	echo "Ban co muon them 1 user:"
	echo "Bam y|Y neu muon them"
	echo "Bam n|N de thoat"
	echo "Lua chon cua ban:" 
	read select
	case $select in
	Y|y)
		echo "Vui long dien ten user:"
		read user_name
		user_exist=$(cat /etc/passwd | grep -w $user_name | cut -d ":" -f1 | grep -w $user_name | wc -l)
		if [ $user_exist -eq 0 ]; then
			sudo useradd -G $group_name $user_name
		else
			sudo usermod -a -G $group_name $user_name
		fi
		echo "Them thanh cong user : $user_name !"
		echo ""
		;;
	N|n)
		exit 0
		;;
	*)
	echo "Vui long nhan Y hoac N"
	esac
done
