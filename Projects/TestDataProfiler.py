import jira.client
import dateutil.parser
from datetime import datetime, timedelta
import time
import csv
import pyodbc
import sys
from sqlalchemy import *
import urllib

params = urllib.quote_plus("DRIVER={SQL Server};SERVER=PRESTGSQLDEV01;DATABASE=BIQMP_PRESTAGING_DEV;Trusted_Connection=TRUE")
engine = create_engine("mssql+pyodbc:///?odbc_connect=%s" % params)
cnxn = pyodbc.connect("DRIVER={SQL Server};SERVER=PRESTGSQLDEV01;DATABASE=BIQMP_PRESTAGING_DEV;Trusted_Connection=TRUE")
cursor = cnxn.cursor()

cursor.execute('exec dataprofiler')
#cursor.execute("select 'Test client' as a,'Test source' as b,'test CR name' as c,'Test context' as d" )
tables = cursor.fetchone()
#
for i in tables:
    # print i
    cursor.execute(i)
    print i
    for q in i :
        tables2=cursor.fetchone()
        # print tables2
    for a in tables2:
        #     if a!=[]:
        print a



    # cursor.execute((str(tables).replace('\\n', '').replace('\\r', '')))

# print tables2
#
# for j in tables2:
#     print j
#
# for y in tables3:
#     print y
#
# for y in tables4:
#     print y
#
# for y in tables5:
#     print y
#
#
#
#

# print tables

# cursor.execute((str(tables).replace('\\n','').replace('\\r','')))

#
# with engine.connect() as con:
#     rs=con.execute('exec dataprofiler').fetchall()


    # for row in rs:
    #     print row
    #     rs2=rs
    #
    # rs2op=con.execute(str(rs2)).fetchall()
    #
    # for row2 in rs2op:
    #     print row2


