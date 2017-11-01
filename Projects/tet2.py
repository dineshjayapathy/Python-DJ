from __future__ import print_function
import jira.client
from jira.client import JIRA
from jira import JIRA, JIRAError
import dateutil.parser
from datetime import datetime, timedelta
import time
import csv
import pyodbc
import sys
import logging
import config
import re

import pprint

#Get 3 inputs from the user client, name, source
#Alternately this can also be pulled from the order form. but have a check in the middle to confirm by a user

import logging
LOG_FILENAME = 'JIRA_BUlkUploadCR.log'
logging.basicConfig(filename=LOG_FILENAME,level=logging.DEBUG)

logging.debug('This message should go to the log file')
client='MODA'
crname='Test Change Req v9'
context='Sample context...'
source='MCHD'
ehr='Custom or Unknown'
impround='InitialBuild'
buildtype='Analytics Implementation:951'



reload(sys)
sys.setdefaultencoding('utf-8')
cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
cursor = cnxn.cursor()

options = {'server': 'https://jira.arcadiasolutions.com'}
jira = JIRA(options, basic_auth=(config.username, config.password))

recent_issue = jira.search_issues(
    "reporter = dinesh.jayapathy and summary~'Initial Build Kick off' ORDER BY createdDate DESC",
    maxResults=2)

# recentcount=0
for issueq in recent_issue:
    # if recentcount==0:

    try:
        exidraw = issueq.fields.customfield_11005
    except:
        exidraw = None
        # recentcount+=1

print('this is the recent exidraw: ' + str(exidraw))

if exidraw is not None:
    # exid=re.match('^[^\d]*(\d+)',exidraw,1)
    p = re.match(r'^[^\d]*(\d+)', exidraw)
    exid = p.group(1)
    print('this is the exid ' + str(exid))

else:
    print('Exid is empty: ' + str(exidraw))

cursor.execute(
    """
    select Client_Acronym, Data_Source_Acronym,Important_Context,Arcadia_Implementation_Lead_Email_Address,id 
    , CASE WHEN Arcadia_Implementation_Type LIKE '%Direct Feed%' THEN 'Direct Feed'
                        WHEN [Data_Extraction_Connection_Type] LIKE '%Flat File%' THEN 'Flat File'
                        WHEN Source_System_Software NOT LIKE '%Flat File%' AND Source_System_Software NOT LIKE '%Other%' THEN Source_System_Software
                        ELSE 'Custom or Unknown' END AS EHR
    ,TRY_CONVERT(date,insert_timestamp)
    
    from ARC_OrderFormValues where ID in ('211')
    """)

orderform = cursor.fetchall()



for i in orderform:

    exid = int(exid)+1
    # print (c,i)
    client = i[0]
    source = i[1]
    context = 'Test description. Will come from excel template later on.'
    email = i[3]
    idO = i[4]
    ehr = i[5]
    impround = 'Initial Build'
    buildtype = 'Analytics Implementation:951'
    print(exid, client, source, context, email, idO)

    watcher = 'dinesh.jayapathy@arcadiasolutions.com'
    watcher = watcher.replace('@arcadiasolutions.com', '')
    # watcher=email.replace('@arcadiasolutions.com','')


    issue_list = [

        # {
        #     'project': {'key': 'AAI'},
        #
        #     'summary': client+' '+source+' '+ehr+' '+impround,#
        #
        #     'customfield_11601': {'value': client}, #this is client
        #     'customfield_11609': {'value': source },#this is the data source. It should be an existing value. Else it will error out.Works now
        #     'customfield_11626':impround, #this is impround field
        #     'description':context,
        #     'issuetype': {'name': 'Epic'},
        #     'customfield_11618':{'value':'Custom or Unknown'},
        #     'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
        #     'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
        #     'assignee': {'name': watcher},
        # },

        {  # story gets created with this setup. ClientName field casuses issue in upload.
            'project': {'key': 'AAI'},
            # 'projectname': 'Arcadia Analytics Implementation',
            'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Kick off',  #

            # 'customfield_11601': client, #this is client. This is causing issue.
            'customfield_11603': {'value': 'Kick off'},
            'customfield_11609': {'value': source},  # this is the data source.
            # 'customfield_11626':{'value':impround}, #this is impround field. This is causing issue in upload.
            'description': context,
            'issuetype': {'name': 'Story'},
            'customfield_11618': {'value': ehr},
            'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
            # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
            'assignee': {'name': watcher},
            # 'customfield_10300': issueEpic,
            'customfield_11005': str(exid)+str(client)+str(source)+str(ehr)+str(impround)+'Kick off' #this is the issue id it has to have proper exid
            # You can pull the exid from JIRA. Run a JQL to pull the most recent Kick off ticket uploaded by DJ. Pull the exid from that, increment it and assign it to the variable exid. For each ticket it gets incremented.
            # add epic link field after checking . Add this to story

            # this is a sample issue id . The first part os exid which has to be unique
            # customfield_11005': u'1604CCC NEWHOther | v. 0Initial BuildKick off',
        }

    ]

    pprint.pprint(issue_list)
    try:

        issues = jira.create_issues(field_list=issue_list)
        print('These are the created issues :' + str(issues))




    except  Exception as e:

        if 'EXIST' in e.message:
            print('The issue does not exist')


            exit(1)
        else:
            print(e)