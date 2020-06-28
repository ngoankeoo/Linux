import os
from os import *
import shutil
ten_file = input("Nhap duong dan file\n")
ton_tai = path.exists(ten_file)
if ton_tai:
   if not os.path.exists("/home/tmp"):
      os.makedirs("/home/tmp")
   print("Copy file {0} den {1}".format(ten_file, "/home/tmp/"+ten_file))
   shutil.copy2(ten_file, "/home/tmp/" + ten_file)
   os.remove(ten_file)
else:
   print("File khong ton tai")
