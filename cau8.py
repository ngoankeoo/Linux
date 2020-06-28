import mysql.connector
conn = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="")
sql = conn.cursor()
sql.execute("CREATE DATABASE TEST")


conn = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="TEST")
sql = conn.cursor()
sql.execute ("CREATE TABLE sinhvien (Masv INT (15) PRIMARY KEY, TenSV VARCHAR(255),NamSinh INT(10),GioiTinh VARCHAR(30) ,HocPhi INT(30))")

