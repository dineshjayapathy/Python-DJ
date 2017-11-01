import csv
import pyodbc
import sys
from sqlalchemy import *
import urllib
import pandas as pd

params = urllib.quote_plus("DRIVER={SQL Server};SERVER=PRESTGSQLDEV01;DATABASE=BIQMP_PRESTAGING_DEV;Trusted_Connection=TRUE")
engine = create_engine("mssql+pyodbc:///?odbc_connect=%s" % params)
cnxn = pyodbc.connect("DRIVER={SQL Server};SERVER=PRESTGSQLDEV01;DATABASE=BIQMP_PRESTAGING_DEV;Trusted_Connection=TRUE")
cursor = cnxn.cursor()

cursor.execute('exec dataprofiler')
#cursor.execute("select 'Test client' as a,'Test source' as b,'test CR name' as c,'Test context' as d" )
tables = cursor.fetchone()
#
#this contains the first level dynamic sql
# print tables
# print 'This is the 1st level dynamic sql'+str(tables)
# print type(tables)


def handle_datetimeoffset(dto_value):
    # ref: https://github.com/mkleehammer/pyodbc/issues/134#issuecomment-281739794
    tup = struct.unpack("<6hI2h", dto_value)  # e.g., (2017, 3, 16, 10, 35, 18, 0, -6, 0)
    return "{:04d}-{:02d}-{:02d} {:02d}:{:02d}:{:02d}.{:07d} {:+03d}:{:02d}".format(*tup)



tables=list(tables)
for i in tables:
    # print i
    cursor.execute(i)
    a=cursor.fetchall()

# for j in a:

#this contains the 2nd level dynamic sql [(sql1),(sql2),(sql3)]
# print 'This is the 2nd level dynamic sql'+str(a)
# print type(a)

dsql3=''
for i in a:
    # print i
    for j in i:
        # print j
        dsql3=dsql3+str(j)
        # cursor.execute(j)
        # b=cursor.fetchall()

# print dsql3


cnxn.add_output_converter(-155, handle_datetimeoffset)


cursor.execute(str(dsql3))
# cursor.execute("select * from ##ProfileData")
op=cursor.fetchall()
# cnxn.commit()



# q2="select * from ##ProfileData"
# data1=pd.read_sql_query(dsql3, cnxn)
for i in op:
    print '\n'+str(i)
