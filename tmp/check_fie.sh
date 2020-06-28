#!/bin/bash

echo "Nhap ten file hoac thu muc can check:"
read file_name
echo "File/thu muc ban muon check la:" $file_name
if [ -f $file_name ]; then
   echo "File" $file_name "Ton tai"
   echo "Cap quyen doc, ghi, thuc thi cho" $file_name
   chmod 777 $file_name
elif [ -d $file_name ]; then
   echo "Directory" $file_name "ton tai"
   echo "Cap quyen doc, ghi, thuc thi cho" $file_name
   chmod 777 -R $file_name
else
    echo $file_name "Khong ton tai"
fi

