import socket
import subprocess
import sys
temp= input("Nhap dia chi IP vao de quet: ")
IP= socket.gethostbyname(temp)
print ("Vui long doi, dang quet toi dia chi IP vua nhap", IP)
try:
  for port in range(1, 1025):
    sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    result = sock.connect_ex((IP, port))
    if result == 0:
      print("cong{}:    \t Open".format(port))
    sock.close()
except KeyboardInterrupt:
  print ("ctrl C se thoat")
  sys.exit()
except socket.error:
  print ("khong the ket noi toi may chu")
  sys.exit()

