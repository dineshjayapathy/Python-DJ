
# -*- coding: utf-8 -*-
from __future__ import print_function
import jira.client
from jira.client import JIRA
import dateutil.parser
from datetime import datetime, timedelta
import time
import csv
import pyodbc
import sys
import json
import config

import pprint

#Get 3 inputs from the user client, name, source

#Alternately this can also be pulled from the order form. but have a check in the middle to confirm by a user

client='MODA'
order_name='Test CR  v8'
source='MCHD'
ehr='Custom or Unknown'
impround='InitialBuild'
buildtype='Analytics Implementation:951'
context=r"United sends us an eligibility feed that does not include eligibility end dates. Their expectation, expressed in writing last October, is that we will treat each new file as the source of truth, and disregard any data from old eligibility files. This was not accounted for in the connector build at the time, but has come up now' and needs resolution."

#add the requester as watcher.


#exid='8899'

# client2='TEST_CLIENT2'
# order_name2='TEST_CLIENT2'
# source2='TEST_source2'
# ehr2='TEST_EHR2'
# impround2='InitialBuild'


options = {'server': 'https://jira.arcadiasolutions.com'}
jira = JIRA(options, basic_auth=(config.username, config.password))

import sys

reload(sys)
sys.setdefaultencoding('utf-8')
# #
# today = datetime.now()
# startTime = today - timedelta(days=2)
# startTime = startTime.strftime("%Y/%m/%d")
#
# issues_in_proj = jira.search_issues('updatedDate > "' + startTime + '" and project in ("Arcadia Analytics Implementation") order by updated',maxResults=99999)

# cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
# cursor = cnxn.cursor()
#
#
# cursor.execute('select * from CRorderformdashboard order by insert_timestamp desc' )
#


cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
cursor = cnxn.cursor()

cursor.execute("select Client_Acronym, Data_source_acronym,CR_Name,CR_Important_Context,Arcadia_Implementation_Lead_Email_Address,TRY_CONVERT(date,insert_timestamp), ID,CR_WorkEffortEstimate from ARC_OrderFormValues_old07072017 where id='13'" )
#cursor.execute("select 'Test client' as a,'Test source' as b,'test CR name' as c,'Test context' as d" )
tables = cursor.fetchall()



count=0
for i in tables:
    count += 1

    client=i[0]
    source=i[1]
    crname=i[2]
    context=i[3]
    watcher='dinesh.jayapathy'#i[4]
    id1=str(i[5])
    estimate=i[6]
    # print ('Here are the variables we need',count, client, source,crname,context)




    issue_dict ={
    # {
    #     'project': {'id': 123},
    #     'summary': 'First issue of many',
    #     'description': 'Look into this one',
    #     'issuetype': {'name': 'Bug'},
    # },

    #     #This works perfectly. project name is not a valid field in jira. It has a different name. find that out and use it.
          #Actually, the project name is not needed. The project key AAI references Arcadia Analytics Implementations. So that is all we need.
        'project': {'key': 'AAI'},
        #'projectname': 'Arcadia Analytics Implementation',
        'summary': 'CR|'+client+'| '+source+'| '+order_name,#The below fields don't map to JIRA till desc. The code works as such.
        #'epic name':client+' '+source+' '+ehr+' '+impround, ignore this field. Epic name populates from sumary.
        'customfield_11601': {'value': client}, #this is client
        # 'customfield_11601': {'id': '12196' }, #this is client. This is causing an error for MODA. Not sure why.
        'customfield_11609': {'value': source },#this is the data source. It should be an existing value. Else it will error out.Works now
        'customfield_11626':'Change Request', #this is impround field
        'description':'test',
        'issuetype': {'name': 'Epic'},
        'customfield_11618':{'value':'Custom or Unknown'},
        'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
        'customfield_10301': order_name , # Epic name. Mandatory field. For all new tickets.
        # 'watcher':
        # 'timetracking':{'originalEstimate': '4','remainingEstimate':'2'} #Set estimated time to completion from CR form. Not working now.
        #'customfield_10005': 'value'[0][2].append('Next Step Outside Connector') # {'name':'Next Step Outside Connector'} #do this later. this is the sprint field.
        #jira.add_watcher('AAI-75148', 'siddhesh.narkar') #this is the script to add watcher. add issue.id instead of AAI and the reporter username from sql
    }
    # {
        # 'project': {'key': 'AAI'},
        # # 'ProjectName': 'Arcadia Analytics Implementation',
        # 'summary': order_name+source+ehr+impround+'Kick off',
        # #'Issue ID': exid+client+' '+source+ehr+impround+'Kick off',
        # #'Epic Link': client+' '+source+' '+ehr+' '+impround,
        # 'customer contract id':buildtype,
        # 'data source name':source,
        # 'customer name': order_name,
        # 'data source type': ehr,
        # 'implementation round':impround,
        # 'implementation phase': 'Kick off',

        # 'customfield_10301': 'test',  # Epic name. Mandatory field. For all new tickets.
    # }

    # pprint.pprint(issue_dict)

    issues = jira.create_issue(fields=issue_dict)
    # issues=str(issues)

    # cursor.execute('''update ARC_OrderFormValues_old07072017
    # set jira_upload=? where ID=?''',str(issues),id1)
    # cnxn.commit()

    # cursor.execute(u,(issues,id1))
    issues.update(timetracking={'originalEstimate': estimate}) #this is the only way originalEstimate can be updated.

    # print (issues.raw)
    # pprint.pprint(issues.raw) #this is too many

    #add orignalestimate to dict
    #add wa
    # issues.update(fields={'timetracking': 'new summary', 'description': 'A new summary was added'})





    # # for i in issues:
    # #     print (i)
    # #add the person in the email to watcher here.
    # jira.add_watcher(issues.id, 'siddhesh.narkar')
    jira.add_watcher(issues.id, 'dinesh.jayapathy')
    jira.add_comment(issues.id, 'CR Created')
    issue_dict.update({'watcher': watcher, 'originalEstimate': estimate,'comment':issues.fields.comment['comments']})
    pprint.pprint(issue_dict)







