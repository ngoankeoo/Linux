import os
tmp=input(“Nhap file cần xóa:”)
if os.path.exists(tmp):
  os.remove(tmp)
  print(“File này đã được xóa")
else:
  print(“File này không tồn tại!")
