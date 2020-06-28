import sqlite3 as lite
import sys
import os
 
path = os.path.dirname(__file__) + "\\csdl.db"
con = lite.connect(path)
 
with con:    
     
    sql = con.cursor()    
    sql.execute("SELECT * FROM SINHVIEN")
 
    rows = sql.fetchall()
 
    for row in rows:
        print (row)
