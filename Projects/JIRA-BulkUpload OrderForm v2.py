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




# Get 3 inputs from the user client, name, source
# Alternately this can also be pulled from the order form. but have a check in the middle to confirm by a user

import logging

LOG_FILENAME = 'JIRA_BUlkUploadCR.log'
logging.basicConfig(filename=LOG_FILENAME, level=logging.DEBUG)

logging.debug('This message should go to the log file')
client = 'MODA'
crname = 'Test Change Req v9'
context = 'Sample context...'
source = 'MCHD'
ehr = 'Custom or Unknown'
impround = 'InitialBuild'
buildtype = 'Analytics Implementation:951'

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


# below will be the code for order forms
# cursor.execute("select Client_Acronym, Data_Source_Acronym, Important_Context, Arcadia_Implementation_Lead_Email_Address, ID, TRY_CONVERT(date,insert_timestamp) from ARC_OrderFormValues where ID in ('181', '182')")



# The below code gets the most recent exid. This will be used later when creating story tickets in issue_id which concatenates <EXID><CLNT> <DATASRC><EHR><IMPROUND>Kick off
#
# recent_issue = jira.search_issues(
#     "reporter = dinesh.jayapathy and summary~'Initial Build Kick off' ORDER BY createdDate DESC",
#     maxResults=1)
#
# # recentcount=0
# for issueq in recent_issue:
#     # if recentcount==0:
#
#     try:
#         exidraw = issueq.fields.customfield_11005
#     except:
#         exidraw = None
#         # recentcount+=1
#
# print('this is the recent exidraw: ' + str(exidraw))
#
# if exidraw is not None:
#     # exid=re.match('^[^\d]*(\d+)',exidraw,1)
#     p = re.match(r'^[^\d]*(\d+)', exidraw)
#     exid = p.group(1)
#     print('this is the exid ' + str(exid))
#
# else:
#     print('Exid is empty: ' + str(exidraw))


epicdesc='''
This Epic tracks the state of the Connector from kick off to Go-Live. 
The Connector is complete when all the associated stories and sub tasks are in ""Closed"" state. 
'''


kickoffdesc='''
*Description* 
* Initiate and complete Client/Site kick off meeting(s)
* Pass on Connectivity requirement section to the client
* Confirm the following details (and update this ticket)
** What is the name and version of all relevant data sources (e.g., AllScripts V1.0.10.2)
** How will Arcadia connect to these data sources?
** If via informatica, is this a Production Instance? If yes, why cannot they set up a reporting mirror? In either case, are there any restrictions on when Arcadia can extract data?
** What is the location hierarchy to be used in the platform (or identify point person who can help with this)
* Confirm OpenAir task  is created with access to all Implementation Teams
* Confirm list of measures required
* Confirm list of any other required and desirable data elements (custom to the implementation)
* Complete client survey and attach to this ticket (UAT Test Patients)
* Complete all legal formalities with site and client (BAA/MSO etc.)
* Review Development Process with client (check points during DQA, SIT, UAT, PRD etc.)


*Sub Tasks*
* Register client and data source in Connector Brain (Solution Architect)
* Assess data volume for infrastructure teams (Solution Architect)

*After Completion*
* Proceed per standard workflow for round #1 (<IMPROUND>) connector builds
** Move Requirements, Client Access, Environment Build Stories to “Open” state
* Ensure that Client Access resource has everything required to ensure access and set up
* For round #2 connector builds, talk to Solution Architect about stories that can be moved into “Open” state.*

*Questions to Answer for Kick off*
* Data Access Solution (answer all that are relevant):
** Has the connectivity requirements document been shared with the client and all questions addressed? Please explain if your response is not “yes”
** Has the data acquisition strategy been discussed and or finalized with the customer, please explain
** What EHR is the client using? 
** Do we need to connect to more than one instance? (For example, a practice management system or a legacy system)
** Are there any standard or non-standard constraints from a connectivity perspective that we need to be aware of?
* Client contact:
** Who is the primary client contact for this connection?
** Has/Will this person been brought up to speed with our mission and connectivity requirements?
** Is this person expecting to hear from our Help Desk?
** Who else should be in the loop when we reach out to this person?
'''


sitprepdesc = '''
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



sitexdesc='''

*Description* 

Execute internal testing of connector

*Sub Tasks*
* User Interface Testing 
* MPI Query Testing 
* MPI Manual Testing 
* Scrubbed Value Testing 
* SIT Data Quality Testing 
* Patient Level Testing 
* Data Quality Summary Reporting 
* Issue Remediation 
* Regression Testing 
* Promote to UAT 

*After Completion*
* Ensure that UAT Prep and UAT Execute  are moved to “Open” state

'''



sitpsub1 = '''

* Source EHR or other source system access 
* Arcadia Analytics user interface and database access

'''

sitpsub2 = '''* Review client survey results that were taken before development started, if no survey has been done start client interaction which will set data expectations for “Compare” step.'''


sitexecsub1='''
* Customer data appears as expected in the application and is usable to them (use cases)
* Filters, measures, and reports function perform as expected (smoke test)
'''


sitexecsub2='''
* Validate the MPI process with queries
* Check data completeness and data quality for MPI data elements.  
* Do SQL validation queries  
* MPI Patient Overlap Testing 
'''

uatpreprdesc='''
*Description* 
Prepare for UAT testing phase

*Sub Tasks*
* Client Presentation Deck 
* UAT Scheduling and Agenda Expectations 
* UAT Tester System Access 
* UAT Environment Smoke Test 
* UAT Test Cases 
* UAT Dry Run 
* Provide Product Documentation 
* Provide Known Issues List 

*After Completion*
(none)
'''



uatexecdesc='''
*Description* 
Perform client UAT sessions

*Sub Tasks*
* Client Training Demonstration 
* Client UAT Session(s) 
* Completed Workbook Results Evaluation 
* UAT Results Summary Report 
* Sign-off Draft 
* Issue Remediation 
* Go-Live Approval 

*After Completion*
(none)
'''



cursor.execute(
    """
    select Client_Acronym,Data_Source_Acronym,Important_Context,Arcadia_Implementation_Lead_Email_Address,id 
    , CASE WHEN Arcadia_Implementation_Type LIKE '%Direct Feed%' THEN 'Direct Feed'
                        WHEN [Data_Extraction_Connection_Type] LIKE '%Flat File%' THEN 'Flat File'
                        WHEN Source_System_Software NOT LIKE '%Flat File%' AND Source_System_Software NOT LIKE '%Other%' THEN Source_System_Software
                        ELSE 'Custom or Unknown' END AS EHR
    ,TRY_CONVERT(date,insert_timestamp)
    ,Arcadia_Implementation_Type
    
    from ARC_OrderFormValues where ID in ('270')
    """)

orderform = cursor.fetchall()

# print (orderform)
if not orderform:
    print('There are no JIRA tickets to be created: \n')

else:

    c = 7100
    for i in orderform:
        try:

            c += 1
            # print (c,i)
            client = i[0]
            source = i[1]
            source=str(source)
            context = 'Test description. Will come from excel template later on.'
            email = i[3]
            idO = i[4]
            ehr = i[5]
            impround = 'Initial Build'
            conntype=i[7]
            buildtype = 'Analytics Implementation:951'

            print('This is the sql output: ',orderform)

            print(c, client, source, context, email, idO)

            watcher = 'dinesh.jayapathy@arcadiasolutions.com'
            watcher = watcher.replace('@arcadiasolutions.com', '')
            # watcher=email.replace('@arcadiasolutions.com','')


            # !! We first create the epic. Then use that epic ticket as a link(issue) to create story and subtasks.

            issue_epic = {

                #     #This works perfectly. project name is not a valid field in jira. It has a different name. find that out and use it.
                # Actually, the project name is not needed. The project key AAI references Arcadia Analytics Implementations. So that is all we need.
                'project': {'key': 'AAI'},
                # 'projectname': 'Arcadia Analytics Implementation',
                'summary': client + ' ' + source + ' ' + conntype + ' ' + impround+ ' !!This is a test EPIC. Will be deleted soon.',
                # The below fields don't map to JIRA till desc. The code works as such.
                # 'epic name':client+' '+source+' '+ehr+' '+impround, ignore this field. Epic name populates from sumary.
                'customfield_11601': {'value': client},  # this is client
                # 'customfield_11601': {'id': '12196' }, #this is client. This is causing an error for MODA. Not sure why.
                # 'customfield_11609': {'value': source},
                # this is the data source. It should be an existing value. Else it will error out. New values cannot be added to this select-list field through the api(works through upload template). it is a bug https://jira.atlassian.com/browse/JRASERVER-36112
                #we will use the data source acronym field instead
                'customfield_11502' : source,
                'customfield_11626': impround,  # this is impround field
                'description': epicdesc,
                'issuetype': {'name': 'Epic'},
                # 'customfield_11618': {'value': ehr},  # data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
            # customer contract id. manadatory For all new tickets.
                'customfield_10301': client + ' ' + source + ' ' + ehr + ' ' + impround,
            # Epic name. Mandatory field. For all new tickets.
                'assignee': {'name': watcher},
                'priority': {'name': 'Minor'},
                'customfield_11105': conntype
                # 'customfield_11628':{'value': client, 'child':{'value': source}}
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
            jira.add_comment(issueEpic.id, 'The Epic '+client + ' ' + source + ' ' + conntype +' '+ impround+ 'has been Created' +str(issueEpic))
            print(issueEpic)

            # issueEpic.update(customfield_11502={'value': source})

            issueEpic = str(issueEpic)

        except Exception, e:
            print(e)

'''
#----------------------commenting this out to test OF-PHPS name


# We then create the story tickets here
# !!!! The field customfield_10300 is the epic link field. Add issue to this.
# customfield_10300': u'AAI-75450',





            issue_story = [
                # {
                #
                #     'project': {'key': 'AAI'},
                #     # 'projectname': 'Arcadia Analytics Implementation',
                #     'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Kick off',  #
                #
                #     'customfield_11603': {'value': 'Kick off'},  # this is implementation phase
                #     'customfield_11609': {'value': source},  # this is the data source.
                #     'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                #     'description': sitprepdesc,
                #     'issuetype': {'name': 'Story'},
                #     'customfield_11618': {'value': ehr},  # data source type
                #     'customfield_11630': {'value': 'Analytics Implementation:951'},
                #     # customer contract id. manadatory For all new tickets.
                #     # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                #     # 'assignee': {'name': watcher},
                #     'customfield_10300': issueEpic,
                # },
                # {
                #
                #     'project': {'key': 'AAI'},
                #     # 'projectname': 'Arcadia Analytics Implementation',
                #     'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Client Access',  #
                #
                #     'customfield_11603': {'value': 'Client Access'},  # this is implementation phase
                #     'customfield_11609': {'value': source},  # this is the data source.
                #     'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                #     'description': sitprepdesc,
                #     'issuetype': {'name': 'Story'},
                #     'customfield_11618': {'value': ehr},  # data source type
                #     'customfield_11630': {'value': 'Analytics Implementation:951'},
                #     # customer contract id. manadatory For all new tickets.
                #     # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                #     # 'assignee': {'name': watcher},
                #     'customfield_10300': issueEpic,
                # },
                # {
                #
                #     'project': {'key': 'AAI'},
                #     # 'projectname': 'Arcadia Analytics Implementation',
                #     'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Requirements',  #
                #
                #     'customfield_11603': {'value': 'Requirements'},  # this is implementation phase
                #     'customfield_11609': {'value': source},  # this is the data source.
                #     'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                #     'description': sitprepdesc,
                #     'issuetype': {'name': 'Story'},
                #     'customfield_11618': {'value': ehr},  # data source type
                #     'customfield_11630': {'value': 'Analytics Implementation:951'},
                #     # customer contract id. manadatory For all new tickets.
                #     # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                #     # 'assignee': {'name': watcher},
                #     'customfield_10300': issueEpic,
                # },
                # {
                #
                #     'project': {'key': 'AAI'},
                #     # 'projectname': 'Arcadia Analytics Implementation',
                #     'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Environment Build',  #
                #
                #     'customfield_11603': {'value': 'Environment Build'},  # this is implementation phase
                #     'customfield_11609': {'value': source},  # this is the data source.
                #     'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                #     'description': sitprepdesc,
                #     'issuetype': {'name': 'Story'},
                #     'customfield_11618': {'value': ehr},  # data source type
                #     'customfield_11630': {'value': 'Analytics Implementation:951'},
                #     # customer contract id. manadatory For all new tickets.
                #     # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                #     # 'assignee': {'name': watcher},
                #     'customfield_10300': issueEpic,
                # },
                #




                {

                'project': {'key': 'AAI'},
                # 'projectname': 'Arcadia Analytics Implementation',
                'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' SIT Prep',  #

                'customfield_11603': {'value': 'SIT Prep'},  # this is implementation phase
                # 'customfield_11609': {'value': source},  # this is the data source.
                'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                'description': sitprepdesc,
                'issuetype': {'name': 'Story'},
                'customfield_11618': {'value': ehr},  # data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
                # customer contract id. manadatory For all new tickets.
                # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                # 'assignee': {'name': watcher},
                'customfield_10300': issueEpic,
                },
                {
                # story gets created with this setup. ClientName field casuses issue in upload.
                'project': {'key': 'AAI'},
                # 'projectname': 'Arcadia Analytics Implementation',
                'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' SIT Execute',  #

                'customfield_11603': {'value': 'SIT Execute'},  # this is implementation phase
                # 'customfield_11609': {'value': source},  # this is the data source.
                'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                'description': sitexdesc,
                'issuetype': {'name': 'Story'},
                'customfield_11618': {'value': ehr},  # data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
            # customer contract id. manadatory For all new tickets.
                # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                # 'assignee': {'name': watcher},
                'customfield_10300': issueEpic,

                # 'customfield_11005': '8100STW STWHPHC1Custom or UnknownInitial BuildKick off'#+'Kick off' #this is the issue id it has to have proper exid
                # You can pull the exid from JIRA. Run a JQL to pull the most recent Kick off ticket uploaded by DJ. Pull the exid from that, increment it and assign it to the variable exid. For each ticket it gets incremented.
                # this is a sample issue id . The first part os exid which has to be unique
                # customfield_11005': u'1604CCC NEWHOther | v. 0Initial BuildKick off',
                }
            ]

            pprint.pprint(issue_story)

            # issueStory = jira.create_issues(field_list=issue_story)
            issueStory = jira.create_issues(field_list=issue_story)
            print('These are the created epic and story issues :' + str(issueEpic) + str(issueStory))

            # pprint.pprint(issues)
            # issueStory = str(issueStory)

            issueSitprep=str(issueStory[0]['issue'])
            issueSitexec = str(issueStory[1]['issue'])

            issue_subtask = [
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Obtain System Access',
                    # 'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub1,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Survey Data Quality',
                    # 'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub2,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'User Interface Testing',
                    # 'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub1,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'MPI Query Testing',
                    # 'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub2,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                }

            ]

            issueSubtask = jira.create_issues(field_list=issue_subtask)

            pprint.pprint(issueSubtask)

            print('This is the subtask that was just created :', str(issueSubtask))

        
        except Exception, e:
            print(e)

'''

