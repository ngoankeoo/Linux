import mysql.connector
conn = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="")
sql = conn.cursor()
sql.execute("CREATE DATABASE sinhvien")

