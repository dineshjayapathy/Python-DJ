
# -*- coding: utf-8 -*-
#from __future__ import print_function
import jira.client
from jira.client import JIRA
import dateutil.parser
from datetime import datetime, timedelta
import time
import csv
import pyodbc
import sys
import pandas as pd
import config
import pprint

'id 13144'

from tabulate import tabulate


client='MODA'
order_name='CR|TEST'
source='LDH'
ehr='Custom or Unknown'
impround='InitialBuild'
buildtype='Analytics Implementation:951'
exid='8899'

options = {'server': 'https://jira.arcadiasolutions.com'}
jira = JIRA(options, basic_auth=(config.username, config.password))

issue = jira.issue('AAI-70930')

# cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
# cursor = cnxn.cursor()
#
# cursor.execute('select [Client Acronym], [Source Acronym],[CR Name],Context,TRY_CONVERT(date,insert_timestamp) from CRorderformdashboard where TRY_CONVERT(date,insert_timestamp)=CONVERT(DATE,GETDATE())' )
# tables = cursor.fetchall()

# count=0
# for i in tables:
#     count += 1
#
#     client=i[0]
#     source=i[1]
#     crname=i[2]
#     context=i[3]
#     print 'Here are the variables we need',count, client, source,crname, context
#
#
#
#
#
#
# q='select [Client Acronym], [Source Acronym],[CR Name],TRY_CONVERT(date,insert_timestamp) from CRorderformdashboard where TRY_CONVERT(date,insert_timestamp)=CONVERT(DATE,GETDATE())'
#
# data=pd.read_sql(q,cnxn)

#print data


#to view as dataframe press ctrl+f8 and then run debug-> then go to variables ->right click-> view as dataframe.


#data=pd.DataFrame(tables)

#print data


#print tabulate(data, headers='keys', tablefmt='psql')

# Position the cursor on a line in your code where you are interested to see your variables.
# Press Ctrl-F8 to toggle a breakpoint.
# Debug your code
#print data

#


pprint.pprint(issue.raw)

#
# for field_name in issue.raw['fields']:
#     print    "Field:", field_name, "Value:", issue.raw['fields'][field_name]
    # print type(issue.raw)
    # print field_name,

# jira.add_watcher(issue.id, 'siddhesh.narkar')


