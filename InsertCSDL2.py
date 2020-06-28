import sqlite3 as lite
import sys
import os
dl = (
    (1, 'Audi','Nam',26/6,40,'ha noi',642),
    (2, 'Mercedes','Nam',26/6,40,'ha noi',57127),
    (3, 'Skoda','Nam',26/6,40,'ha noi', 9000),
    (4, 'Volvo','Nam',26/6,40,'ha noi', 29000),
    (5, 'Bentley','Nam',26/6,40,'ha noi', 350000),
    (6, 'Hummer','Nam',26/6,40,'ha noi', 41400),
    (7, 'Volkswagen','Nam',26/6,40,'ha noi', 21600)
)
path = os.path.dirname(__file__) + "\\csdl.db"
con = lite.connect(path)
with con:
    sql = con.cursor()
    sql.execute("DROP TABLE IF EXISTS SINHVIEN")
    sql.execute("CREATE TABLE SINHVIEN(MASV INT, TENSV TEXT,GIOITINH CHAR,NGAYSINH DATE, TUOI INT, DIACHI TEXT,SDT NUMBER)")
    sql.executemany("INSERT INTO SINHVIEN VALUES(?,?,?,?,?,?,?)", dl)
con.close()
