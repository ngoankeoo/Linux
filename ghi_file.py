file = open("ghiFile.txt", "a")
string = str(input("Nhap ky tu can ghi file"))
print(string)
file.write(string)
file.close()

print("Du lieu da duoc ghi thanh cong")

file = open("ghiFile.txt", "r")
print("Noi dung file la:", file.read())
file.close()
