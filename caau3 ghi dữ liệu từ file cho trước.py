#!/usr/bin/python
tmp=open("abcd.txt","w")    # Mở file dữ liệu để ghi
tmp.write(input("Nhap thong tin can ghi vao file: "))
tmp.close()
print ("Du lieu da duoc ghi thanh cong !")
doc = open("abcd.txt", "r") # Mở file dữ liệu để đọc nội dung
print "Noi dung duoc ghi la:", doc.readline()
doc.close()
