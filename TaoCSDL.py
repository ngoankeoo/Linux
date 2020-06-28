import sqlite3 as lite
import sys
import os
path = os.path.dirname(__file__) + "\\csdl.db"
con = lite.connect(path)
 
with con:
    sql = con.cursor()    
    sql.execute("CREATE TABLE SINHVIEN(MASV INT, TENSV TEXT,GIOITINH CHAR,NGAYSINH DATE, TUOI INT, DIACHI TEXT,SDT NUMBER)")
con.close()
