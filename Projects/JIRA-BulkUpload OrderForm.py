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
import logging
import config
import re

import pprint


'''



This form takes the records from AnalyticsMonitoring.com and creates JIRA tickets for New Connectors.
The JIRA account used for this is gojira
The config.py file will have to be created with the account details. Just create .py file and put the following in its contents and save it:

username = 'gojira'
password = <check email>

The config.py file will have to be in the same location as this JIRA-Bulk OrderFrom.py script.

Create a pycharmvpn.bat file with the following as the content so that you can connect to db

runas /netonly /user:Arcadiahosted.local\djayapathy "C:\Program Files (x86)\JetBrains\PyCharm Community Edition 2016.3.3\bin\pycharm.exe"

'''



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

options = {'server': 'https://jira.arcadiasolutions.com'}
jira = JIRA(options, basic_auth=(config.username, config.password))
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
cursor = cnxn.cursor()
# cursor.execute("select Client_Acronym, Data_Source_Acronym, CR_Name, cr_Important_Context, Arcadia_Implementation_Lead_Email_Address, TRY_CONVERT(date,insert_timestamp), ID, CR_WorkEffortEstimate from ARC_OrderFormValues where ID='240'")
#

# tables = cursor.fetchall()
#
# print (tables)
# if not tables:
#     print ('There are no JIRA tickets to be created: \n')
#
# else:
#
#     count=0
#     for i in tables:
#         count += 1
#
#         client=i[0]
#         source=i[1]
#         crname=i[2]
#         context=i[3]
#         id1 = str(i[6])
#         estimate = str(i[7])+'h'
#         watcher='dinesh.jayapathy@arcadiasolutions.com'
#         watcher=watcher.replace('@arcadiasolutions.com','')
#         # watcher=i[4].replace('@arcadiasolutions.com','')
#         #print 'Here are the variables we need',count, client, source,order_name
#         issue_d = {
#
#         #     #This works perfectly. project name is not a valid field in jira. It has a different name. find that out and use it.
#               #Actually, the project name is not needed. The project key AAI references Arcadia Analytics Implementations. So that is all we need.
#             'project': {'key': 'AAI'},
#             #'projectname': 'Arcadia Analytics Implementation',
#             'summary': 'CR|'+client+'| '+source+'| '+crname,#The below fields don't map to JIRA till desc. The code works as such.
#             #'epic name':client+' '+source+' '+ehr+' '+impround, ignore this field. Epic name populates from sumary.
#             'customfield_11601': {'value': client}, #this is client
#             # 'customfield_11601': {'id': '12196' }, #this is client. This is causing an error for MODA. Not sure why.
#             'customfield_11609': {'value': source },#this is the data source. It should be an existing value. Else it will error out.Works now
#             'customfield_11626':'Change Request', #this is impround field
#             'description':context,
#             'issuetype': {'name': 'Epic'},
#             'customfield_11618':{'value':'Custom or Unknown'},
#             'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
#             'customfield_10301': crname , # Epic name. Mandatory field. For all new tickets.
#             'assignee': {'name': watcher},
#             #'timeoriginalestimate': '5',
#             #'timetracking':{'originalEstimate': '4d','remainingEstimate':'1d'}, #Set estimated time to completion from CR form. Not working now.
#             #'customfield_10005': 'value'[0][2].append('Next Step Outside Connector') # {'name':'Next Step Outside Connector'} #do this later. this is the sprint field.
#
#             #jira.add_watcher('AAI-75148', 'siddhesh.narkar') #this is the script to add watcher. add issue.id instead of AAI and the reporter username from sql
#
#
#
#         }
#
#         pprint.pprint(issue_d)
#         # logging.debug(pprint.pprint(issue_d))
#         # logging.debug(watcher)
#
#         issue = jira.create_issue(fields=issue_d)
#         #Update the dashboard with the ticket number. Important. Works
#         # cursor.execute('''update ARC_OrderFormValues_old07072017
#         # set jira_upload=? where ID=?''', str(issues), id1)
#         # cnxn.commit()
#
#         logging.debug('JIRA Ticket number:'+str(issue))
#         logging.debug(issue_d)
#
#
#         issue.update(timetracking={'originalEstimate': estimate}) #this is the only way in which we can update the original estimate
#
#         jira.add_watcher(issue.id, watcher)
#
#         jira.add_comment(issue.id, 'Your CR has been Created')
#
#


#below will be the code for order forms
# cursor.execute("select Client_Acronym, Data_Source_Acronym, Important_Context, Arcadia_Implementation_Lead_Email_Address, ID, TRY_CONVERT(date,insert_timestamp) from ARC_OrderFormValues where ID in ('181', '182')")



#The below code gets the most recent exid. This will be used later when creating story tickets in issue_id which concatenates <EXID><CLNT> <DATASRC><EHR><IMPROUND>Kick off

recent_issue = jira.search_issues(
    "reporter = dinesh.jayapathy and summary~'Initial Build Kick off' ORDER BY createdDate DESC",
    maxResults=1)

# recentcount=0
for issueq in recent_issue:
    # if recentcount==0:

    try:
        exidraw = issueq.fields.customfield_11005
    except:
        exidraw = None
        # recentcount+=1


print ('this is the recent exidraw: '+str(exidraw))

if exidraw is not None:
    # exid=re.match('^[^\d]*(\d+)',exidraw,1)
    p = re.match(r'^[^\d]*(\d+)', exidraw)
    exid=p.group(1)
    print('this is the exid '+ str(exid))

else:
    print ('Exid is empty: '+ str(exidraw))




sitprepdesc='''
*Description* 
Prepare for delivery of connector to the QA environment

*Sub Tasks*
* Obtain System Access  
* Survey Data Quality  
* Define Testing Scope 
* Project Team Testing Scope Review 
* Entry Criteria Data Quality Analysis 
* Connector Hand-off Review 
* Test Output and Project Artifacts 
* Promotion approval to QA Environment 

*After Completion*
(none)
'''

sitpsub1='''

* Source EHR or other source system access 
* Arcadia Analytics user interface and database access

'''


sitpsub2='''* Review client survey results that were taken before development started, if no survey has been done start client interaction which will set data expectations for “Compare” step.'''




cursor.execute(
"""
select Client_Acronym, Data_Source_Acronym,Important_Context,Arcadia_Implementation_Lead_Email_Address,id 
, CASE WHEN Arcadia_Implementation_Type LIKE '%Direct Feed%' THEN 'Direct Feed'
					WHEN [Data_Extraction_Connection_Type] LIKE '%Flat File%' THEN 'Flat File'
					WHEN Source_System_Software NOT LIKE '%Flat File%' AND Source_System_Software NOT LIKE '%Other%' THEN Source_System_Software
					ELSE 'Custom or Unknown' END AS EHR
,TRY_CONVERT(date,insert_timestamp)
,Arcadia_Implementation_Type
					
from ARC_OrderFormValues where ID in ('266','267')
""")


orderform = cursor.fetchall()

# print (orderform)
if not orderform:
    print ('There are no JIRA tickets to be created: \n')

else:

    c=7100
    for i in orderform:
        try:

            c+=1
            # print (c,i)
            client=i[0]
            source=i[1]
            context='Test description. Will come from excel template later on.'
            email=i[3]
            idO=i[4]
            ehr=i[5]
            impround=i[7]    #'Initial Build'
            buildtype='Analytics Implementation:951'
            print (c,client,source,context,email,idO)

            watcher='dinesh.jayapathy@arcadiasolutions.com'
            watcher=watcher.replace('@arcadiasolutions.com','')
            # watcher=email.replace('@arcadiasolutions.com','')


                #!! We first create the epic. Then use that epic ticket as a link(issue) to create story and subtasks.

            issue_epic = {

                #     #This works perfectly. project name is not a valid field in jira. It has a different name. find that out and use it.
                # Actually, the project name is not needed. The project key AAI references Arcadia Analytics Implementations. So that is all we need.
                'project': {'key': 'AAI'},
                # 'projectname': 'Arcadia Analytics Implementation',
                'summary': client+' '+source+' '+ehr+' '+impround,
                # The below fields don't map to JIRA till desc. The code works as such.
                # 'epic name':client+' '+source+' '+ehr+' '+impround, ignore this field. Epic name populates from sumary.
                'customfield_11601': {'value': client},  # this is client
                # 'customfield_11601': {'id': '12196' }, #this is client. This is causing an error for MODA. Not sure why.
                'customfield_11609': {'value': source},
                # this is the data source. It should be an existing value. Else it will error out.Works now
                'customfield_11626': impround,  # this is impround field
                'description': context,
                'issuetype': {'name': 'Epic'},
                'customfield_11618': {'value':ehr}, #data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},  # customer contract id. manadatory For all new tickets.
                'customfield_10301': client+' '+source+' '+ehr+' '+impround,  # Epic name. Mandatory field. For all new tickets.
                'assignee': {'name': watcher},
                # 'timeoriginalestimate': '5',
                # 'timetracking':{'originalEstimate': '4d','remainingEstimate':'1d'}, #Set estimated time to completion from CR form. Not working now.
                # 'customfield_10005': 'value'[0][2].append('Next Step Outside Connector') # {'name':'Next Step Outside Connector'} #do this later. this is the sprint field.

                # jira.add_watcher('AAI-75148', 'siddhesh.narkar') #this is the script to add watcher. add issue.id instead of AAI and the reporter username from sql
            }

            pprint.pprint(issue_epic)
            # logging.debug(pprint.pprint(issue_d))
            # logging.debug(watcher)
            issueEpic = jira.create_issue(fields=issue_epic)
            # Update the dashboard with the ticket number. Important. Works
            # cursor.execute('''update ARC_OrderFormValues
            #         set jira_ticket=? where ID=?''', str(issue), id1)
            # cnxn.commit()
            logging.debug('JIRA Ticket number:' + str(issueEpic))
            logging.debug(issue_epic)

            print (issueEpic)

            issueEpic=str(issueEpic)


                # We then create the story tickets here
                #!!!! The field customfield_10300 is the epic link field. Add issue to this.
                # customfield_10300': u'AAI-75450',

            issue_story={

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

               #story gets created with this setup. ClientName field casuses issue in upload.
                'project': {'key': 'AAI'},
                #'projectname': 'Arcadia Analytics Implementation',
                'summary': client+' '+source+' '+ehr+' '+impround+' SIT Prep',#

                'customfield_11603':{'value': 'SIT Prep'}, #this is implementation phase
                'customfield_11609': {'value': source },#this is the data source.
                'customfield_11626': impround, #this is impround field. This is causing issue in upload.
                'description':sitprepdesc,
                'issuetype': {'name': 'Story'},
                'customfield_11618':{'value':ehr}, #data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},  # customer contract id. manadatory For all new tickets.
                # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                # 'assignee': {'name': watcher},
                'customfield_10300': issueEpic,

                # 'customfield_11005': '8100STW STWHPHC1Custom or UnknownInitial BuildKick off'#+'Kick off' #this is the issue id it has to have proper exid
                #You can pull the exid from JIRA. Run a JQL to pull the most recent Kick off ticket uploaded by DJ. Pull the exid from that, increment it and assign it to the variable exid. For each ticket it gets incremented.
                #this is a sample issue id . The first part os exid which has to be unique
                # customfield_11005': u'1604CCC NEWHOther | v. 0Initial BuildKick off',
            }


            pprint.pprint(issue_story)

            # issueStory = jira.create_issues(field_list=issue_story)
            issueStory = jira.create_issue(fields=issue_story)
            print('These are the created epic and story issues :'+str(issueEpic)+str(issueStory))

            # pprint.pprint(issues)
            issueStory=str(issueStory)

            issue_subtask =[
            {

                'project': {'key': 'AAI'},
                'summary': 'Obtain System Access',
                'customfield_11609': {'value': source},  # this is the data source.
                'customfield_11626': impround,
                'description': sitpsub1,
                'issuetype': {'name': 'Sub-task'},
                'customfield_11618': {'value': ehr}, #data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
                'parent': {'key':issueStory}

            },
            {

                'project': {'key': 'AAI'},
                'summary': 'Survey Data Quality',
                'customfield_11609': {'value': source},  # this is the data source.
                'customfield_11626': impround,
                'description': sitpsub2,
                'issuetype': {'name': 'Sub-task'},
                'customfield_11618': {'value': ehr}, #data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
                'parent': {'key':issueStory}

            }
            ]

            issueSubtask = jira.create_issues(field_list=issue_subtask)

            pprint.pprint(issueSubtask)

            print('This is the subtask that was just created :',str(issueSubtask))


        except Exception, e:
            print(e)



