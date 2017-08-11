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

print('this is the recent exidraw: ' + str(exidraw))

if exidraw is not None:
    # exid=re.match('^[^\d]*(\d+)',exidraw,1)
    p = re.match(r'^[^\d]*(\d+)', exidraw)
    exid = p.group(1)
    print('this is the exid ' + str(exid))

else:
    print('Exid is empty: ' + str(exidraw))


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

accessdesc='''
*Description* 
* Reach out to client for access to front and back end 
* Distribute encryption key if PRS or DF
* Request & verify access to source system (EHR, DB) 
* Request & verify access to Source SFTPs (DEV, QA, UAT, PRD) 
* Install of Informatica Runtime Environment (note server names)
* Verify that proper libraries are installed on Agent Machine
* Verify that IP addresses are white listed
* Create connectivity document and upload to box (step by step instructions on how to connect)
* Update passwords on last pass and provide access to relevant folks 
* In case of user specific access (as opposed to generic accounts), update access list

*Sub Tasks*
* Verify connectivity (Development Lead)
* Oversee client engagement (Implementation Lead)

*After Completion*
* Move SIT Prep, Query Development, and Extract and Load Tasks to “Open” state
'''


reqdesc='''
*Description* 
* Update the Client/Site Level wiki with the following information:
** Product version
** Periods & Measures to be enable across environments 
** Tech requirements for custom Reports 
** Requirements for custom measures (if not handled by Product)
** Medical Encounter Definition
** Connector Architecture 
** Specific hosting requirements (if hosted outside Arcadia)
** DEV/QA/UAT/PROD Server Names
** DEV/QA/UAT/PROD Front End URLs 

*Sub Tasks*
(none)

After Completion
*  Ensure  SIT Prep, Query Development, and Extract and Load Tasks are in “Open” state
'''



envblddesc='''
*Description* 
* Request environment build and support operations as needed to ensure the following are completed
** Back end deploys
** Front end deploys
** Pre staging builds
** SFTP Accounts, folders, agents, decryption tasks and Informatica Artifacts 

*Sub Tasks*
Complete environment build (Operations)

*After Completion*
* Ensure all environment build tasks are complete 
'''



extloaddesc='''
*Description* 
* Create new MCTs if needed
* Add new MCTs to extract task flow
* Confirm that data extracted and loaded successfully
* Execute connector quality tests for Row Count tests

*Sub Tasks*
* New Client set up (Development Lead)
* Create Tasks and Task Flows (Development Lead)
* Deploy latest version of client and source folders (Development Lead)

*After Completion*
* Ensure that Query Development and Seed Data Prep are moved to “Open” state
'''


qdevdesc='''
*Description* 
* Develop and test queries on data source backend based on requirements specified in Connector epic.
* Confirm list of new queries to be reviewed in GIT pull request to new branch. (can be multiple commits, but only one pull request)
* Update known issues in the site wiki

*Sub Tasks*
* Confirm query versions (Development Lead)
* Confirm parameters (Development Lead)

After Completion
* Ensure that Code Review is in “Open” state
'''

coderevdesc='''
*Description* 
* Confirm that all queries in pull request adhere to below development standards
** Pull latest versions of queries from GIT and analyze them against client requirements and Arcadia product requirements
** Document all fields mapped to NULL which are marked either as “Required” or “Required Specific Measure” in the Arcadia data dictionary, and validate if any of those are documented as known issues. Any fields which are not present in known issues but are mapped to NULL are added to the EHR-specific code review tracker and sent back to Query Development for review/correction
** Verify SQL syntax and if any issues are identified, add to the code review tracker and send back to Query Development for review/correction
** Verify if all fields which should be parameterized for Informatica are in fact parameterized. If not, add them to the code review tracker and send back to Query Development for review/correction
* Keep this story open until all tasks are complete for Query Development

*Sub Tasks*
(none)

*After Completion*
* Ensure that DQA is moved to “Open” state
'''


seedprepdesc='''
*Description* 
* Create skeleton seed script for Staging & Warehouse
* Run seed generation sproc from staging and populate spreadsheet for review
* First pass seed review
* Update skeletal seed scripts in GIT (Staging & Warehouse) and commit to client repo. Ensure Jenkins builds successfully with updated seed scripts
* Run scripts in DEV Staging & Warehouse; run scrub.uspMapLookupToScrub in Warehouse

*Sub Tasks*
* Create Staging Seed structures (Development Lead)
* Create Warehouse Seed structures (Development Lead)

*After Completion*
* Ensure that Clinical Review is moved to “Open” state
'''


clinrevdesc='''
*Description* 
* Review clinical seeds and provide feedback

*Sub Tasks*
*Update Staging Seed structures (Development Lead)
*Update Warehouse Seed structures (Development Lead)

*After Completion*
(none)
'''


dqadesc='''
*Description* 
* Execute DQA playbook (compare results against client survey)
* Fix issues in connector build until all test cases pass
* Review playbook results with Solution Architect and QC SME
* Update Known Issues in JIRA and ensure that these are reflected on the site wiki

*Sub Tasks*
Review DQA results (Solution Architect)

*After Completion*
* Ensure that Verification is moved to “Open” state
'''


verifdesc='''
*Description* 
* Generate QC Validation Extract File
* Execute tests per QC playbook 
* Execute tests against test patients from kick off meeting
* Create JIRA Tickets for failed tests and follow up to closure
** Create tickets as a sub task to this Story
** Triage issues with Solution Architect where needed

*Sub Tasks*
* Review DQA and test results with client (Test Lead)

*After Completion*
* Ensure that Deliver to QA  is moved to “Open” state
'''


deliverqadesc='''
*Description* 
* Create Handoff Document 
* Complete SA validation  
* Set up and complete handoff meeting with delivery team
* Create Initial Release of connector

*Sub Tasks*
* Sign off on Connector Hand off Documents (Solution Architect)
* Sign off on Connector Hand off Documents (Test Lead)
* Sign off on Connector Hand off Documents (Product Support)
* Promote Connector to QA (Product Support)

*After Completion*
* Ensure that SIT Execute  is moved to “Open” state
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


uatprepdesc='''
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


goliveapprvdesc='''
*Description* 
Promote to production

*Sub Tasks*
* Start Transition to Production Support  
* Production Checkout Dry Run 
* Promote to Production 
* Production Checkout 
* Production Create User Logins 
* Provide User Admin Training 
* QA Support Productions for Initial Period 
* Complete Transition to Production Support 

*After Completion*
(none)
'''


golivedesc='''
*Description* 
* Ensure client sign off is obtained
* Fill out go-live checklist
* Sign off on known issues from wiki
* Sign off on user access list from wiki
* Complete go live activities per checklist

*Sub Tasks*
* Provision access to users (Production Support)
* Send welcome email to users and offer to respond in case of any questions

*After Completion*
* Accept Connector in Production Support
* Commence monitoring of connectors and related environments
'''


sitpsub1osa = '''

* Source EHR or other source system access 
* Arcadia Analytics user interface and database access

'''

sitpsub2sdq = '''* Review client survey results that were taken before development started, if no survey has been done start client interaction which will set data expectations for “Compare” step.'''

sitpsub3dts='''
* Review project needs and plan as appropriate
* Review any project specific requirements with author and request clarification in advance of test case writing. Any requirement gap issues should be escalated to the project team.
* Work unique or new in this project that may require additional test planning 
* Review EHR walkthrough videos if not familiar with EHR type 
* Review all tasks for inclusion like MPI S&S or just queries etc. 
* Coverage Matrix
'''


sitpsub4pttsr='''
* Review planned testing scope with project team for collaboration and buy-in
'''

sitpsub5ecdqa='''
* Comparative analysis to survey 
* Data Quality Analyzer  
* Data Quality Scorecard 
* Run Data by Month Entry Criteria tool and analyze results.  
* Population Profile.  
* Document non-blocking items for “SIT Execute Data Quality Follow on Investigation”  
'''

sitpsub6chr='''
* Meet with connector team to discuss issues uncovered during the connector build.  
* Connector team to bring hand off results.  
* Test team to bring comparative data analysis results.  
* Document non-blocking issues for follow up in “SIT Execute Data Quality Follow on Investigation” and possible later client communication.

'''



sitpsub7topa='''
* Prepare test materials in advance of promotion to QA 
* “Test Results and Project Artifacts” repository with link on links page  
* Test Case document
* JIRA bug dashboard  
'''

sitpsub8paqe='''
* Approve the deployment to the QA environment
'''


sitexecsub1uit='''
* Customer data appears as expected in the application and is usable to them (use cases)
* Filters, measures, and reports function perform as expected (smoke test)
'''


sitexecsub2mqt='''
* Validate the MPI process with queries
* Check data completeness and data quality for MPI data elements.  
* Do SQL validation queries  
* MPI Patient Overlap Testing 
'''

sitexecsub3mmt='''
* Manually validate the MPI process manually and create report of 
* MPI Accuracy Summary Report  
'''


sitexecsub4svt='''
* Review scrubbed and unscrubbed values.  
'''

sitexecsub5sdqt='''
* Run data quality testing and begin/continue documenting variances for client reporting
* Validate MRNs provided by the customer meet expected result provided by customer
* Investigate connector hand-off and other previously recorded data quality issues for client communication
* Key data elements trending over time
* What about the clients data workflow might be causing issues 
* What does not match based on survey
'''

sitexecsub6plt='''
* Perform patient level testing.  
* Initiative Performance Measures
* Care Management Reports
* Other Arcadia Analytics functionality continue to document findings for reporting to client
'''

sitexecsub7dqsr='''
* Finalize data quality summary report.  Review with QA team for cross-project knowledge
* Review with project team before client session to refine customer message
* Communicate results with customer with project leadership support
* Explain variances from their expected result
'''

sitexecsub8ir='''
* Track the fixing of reported issues/bugs, and verify when they are reported as fixed.  
* Ensure all bugs show on JIRA bug dashboard.  
* Escalate priority issues.
'''

sitexecsub9rt='''
* Select cases for re-test to ensure bug fixes have not had unintended consequences.
'''

sitexecsub10pu='''
* Approve and promote code base to UAT
'''


uatprepsub1cpd='''
* Prepare the presentation deck for the customer session. 
'''


uatprepsub2usae='''
* With project collaboration plan scope and set dates for UAT Training Demonstration and UAT Test Sessions.
* Communicate with customer to set UAT agenda expectations.  
* Include what they need like Access to source data (ehr), Internet Access, Computers
* Recommend large monitors for two screen work etc. 
'''


uatprepsub3utsa='''
* Identify names of testers and ensure they have access to the UAT environment prior to the UAT training and testing sessions
'''


uatprepsub4uest='''
* Smoke test the site in the UAT environment to ensure readiness for customer sessions.  
* UI smoke test 
* Measure performance results compare with QA
'''


uatprepsub5utc='''
* Fully prepare test cases for customer session 
* Create and/or update test scripts.  
* Divide cases for appropriate assignment to testers.  
* Generate list of patients or members whose data is from this source only. 
* Sample single source patients should include high activity patients for SPR testing
'''

uatprepsub6udr='''
* Perform some of the UAT test cases with some of the patients or members from the list to ensure testing will work during the customer session.
'''


uatprepsub7ppd='''
* With project leadership collaboration ensure up to date documentation on the product is provided to the customer prior to the sessions.
'''

uatprepsub8pkil='''
* With project collaboration create or update the client facing Known Issues list and provided and/or review it with the customer prior to the test session.
'''

uatexecsub1ctd='''
* Collaborate with project team to execute product training demonstration for the client.  This can be remote or in person, preferably in advance of test session.  Preferably in UAT with their data when they have access.  Showing the demo on the demo environment is last option. 
'''

uatexecsub2cus='''
* Collaborate with project team to execute UAT test session with customer; preferably on site
* Must be in UAT with their data when they have access
* Demonstrate the test steps
* Assist testers as questions arise
* Instruct testers to log issues on cases when unable to explain during the session.  Ensure someone in the office is scheduled to back up on site resources.  
'''


uatexecsub3cwre='''
* Compile test results
* Evaluate all failures for cause
* Enter defects to JIRA as appropriate
* Add new issues to “Known Issues” list.
'''


uatexecsub4ursr='''
* Create a UAT Results Summary report and review with project team
* Report should high level report a summary of the testing
* At detail level each issue should be described for both root cause and resolution expectation
* If issue results from a “need for more training” a clear write up informing customer of functionality
* If issue is defect or known issue identify the new JIRA number or existing issue number on the KI list
* If issue is enhancement add to product enhancement queue and communicate same to customer
'''

uatexecsub5sd='''
* With project team collaboration create sign off draft document and introduce to client
'''


uatexecsub6ir='''
* Work to resolve, validate and deploy all issues on the Known Issue list.  
* Prioritize issues blocking sign-off to be resolved first.  
'''

uatexecsub7gla='''
* Work to and receive sign-off from client to promote to production environment
'''


goliveapprvsub1stps='''
* Begin transition of support to Production Support team
* Compile pertinent data
* Inform production support 
* Get name of resource to start transitioning knowledge
'''


goliveapprvsub2pcdr='''
* Perform validation steps that will be performed in production in UAT before the promotion. 
* UI tests
* Get “before” results measure data in UAT for later comparison
* Get “before” picture of measures in prod if project is updating or replacing an existing connector
'''

goliveapprvsub3pp='''
* Request production promotion
* Ensure QA staffing for expected completion of production deploy
'''

goliveapprvsub4pc='''
* Validate production install
* System is up and available
* Smoke test UI
* Compare prod to results from production checkout dry run previously performed in UAT 
'''


goliveapprvsub5pcul='''
* Collaborate with project team to ensure accurate creation of production user logins
'''



goliveapprvsub6puat='''
* Collaborate with project team to provide user admin and training documentation
'''

goliveapprvsub7qspip='''
* QA team to support production environment for Initial Period
'''


goliveapprvsub8ctps='''
* Transition client to production support after initial support period
'''

golivesub1pau='''
* Provision access to users (Production Support)
'''


cursor.execute(
    """
    select Client_Acronym, Data_Source_Acronym,Important_Context,Arcadia_Implementation_Lead_Email_Address,id 
    , CASE WHEN Arcadia_Implementation_Type LIKE '%Direct Feed%' THEN 'Direct Feed'
                        WHEN [Data_Extraction_Connection_Type] LIKE '%Flat File%' THEN 'Flat File'
                        WHEN Source_System_Software NOT LIKE '%Flat File%' AND Source_System_Software NOT LIKE '%Other%' THEN Source_System_Software
                        ELSE 'Custom or Unknown' END AS EHR
    ,TRY_CONVERT(date,insert_timestamp)
    ,Arcadia_Implementation_Type
    
    from ARC_OrderFormValues where ID in ('269')
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
            source = 'PHPS'#i[1]
            context = 'Test description. Will come from excel template later on.'
            email = i[3]
            idO = i[4]
            ehr = i[5]
            impround = i[7]  # 'Initial Build'
            buildtype = 'Analytics Implementation:951'
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
                'summary': client + ' ' + source + ' ' + ehr + ' ' + impround,
                # The below fields don't map to JIRA till desc. The code works as such.
                # 'epic name':client+' '+source+' '+ehr+' '+impround, ignore this field. Epic name populates from sumary.
                'customfield_11601': {'value': client},  # this is client
                # 'customfield_11601': {'id': '12196' },
                'customfield_11609': {'value': source}, #this is causing issues for PHPS of
                # this is the data source. It should be an existing value. Else it will error out.Works now
                'customfield_11626': impround,  # this is impround field
                'description': epicdesc,
                'issuetype': {'name': 'Epic'},
                'customfield_11618': {'value': ehr},  # data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
            # customer contract id. manadatory For all new tickets.
                'customfield_10301': client + ' ' + source + ' ' + ehr + ' ' + impround,
            # Epic name. Mandatory field. For all new tickets.
                'assignee': {'name': watcher},
                'priority': {'name': 'Minor'}
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

            print(issueEpic)

            issueEpic = str(issueEpic)

            # We then create the story tickets here
            # !!!! The field customfield_10300 is the epic link field. Add issue to this.
            # customfield_10300': u'AAI-75450',

            issue_story = [
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Kick off',  #

                    'customfield_11603': {'value': 'Kick off'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': kickoffdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Client Access',  #

                    'customfield_11603': {'value': 'Client Access'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': accessdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Requirements',  #

                    'customfield_11603': {'value': 'Requirements'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': reqdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Environment Build',  #

                    'customfield_11603': {'value': 'Environment Build'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': envblddesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Extract and Load',  #

                    'customfield_11603': {'value': 'Extract and Load'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': extloaddesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Query Development',  #

                    'customfield_11603': {'value': 'Query Development'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': qdevdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Code Review',  #

                    'customfield_11603': {'value': 'Query Development'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': coderevdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Seed Data Prep',  #

                    'customfield_11603': {'value': 'Seed Data Prep'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': seedprepdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },

                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Clinical Review',  #

                    'customfield_11603': {'value': 'Clinical Review'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': clinrevdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' DQA',  #

                    'customfield_11603': {'value': 'DQA'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': dqadesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Verification',  #

                    'customfield_11603': {'value': 'Verification'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': verifdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },
                {

                    'project': {'key': 'AAI'},
                    # 'projectname': 'Arcadia Analytics Implementation',
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Deliver to QA',  #

                    'customfield_11603': {'value': 'Deliver to QA'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': deliverqadesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    # customer contract id. manadatory For all new tickets.
                    # 'customfield_10301': client+' '+source+' '+ehr+' '+impround, # Epic name. Mandatory field. For all new tickets.
                    # 'assignee': {'name': watcher},
                    'customfield_10300': issueEpic,
                },

                {

                'project': {'key': 'AAI'},
                # 'projectname': 'Arcadia Analytics Implementation',
                'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' SIT Prep',  #

                'customfield_11603': {'value': 'SIT Prep'},  # this is implementation phase
                'customfield_11609': {'value': source},  # this is the data source.
                'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                'description': sitprepdesc,
                'issuetype': {'name': 'Story'},
                'customfield_11618': {'value': ehr},  # data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
                'customfield_10300': issueEpic,
                },
                {
                # story gets created with this setup. ClientName field casuses issue in upload.
                'project': {'key': 'AAI'},
                'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' SIT Execute',  #
                'customfield_11603': {'value': 'SIT Execute'},  # this is implementation phase
                'customfield_11609': {'value': source},  # this is the data source.
                'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                'description': sitexdesc,
                'issuetype': {'name': 'Story'},
                'customfield_11618': {'value': ehr},  # data source type
                'customfield_11630': {'value': 'Analytics Implementation:951'},
                'customfield_10300': issueEpic,
                },
                {
                    'project': {'key': 'AAI'},
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' UAT Prep',  #
                    'customfield_11603': {'value': 'UAT Prep'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': uatprepdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'}, #This is buildtype
                    'customfield_10300': issueEpic,
                },
                {
                    'project': {'key': 'AAI'},
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' UAT Execute',  #
                    'customfield_11603': {'value': 'UAT Execute'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': uatexecdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},  # This is buildtype
                    'customfield_10300': issueEpic,
                },
                {
                    'project': {'key': 'AAI'},
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Go-Live Approval',  #
                    'customfield_11603': {'value': 'Go-Live Approval'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': goliveapprvdesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},  # This is buildtype
                    'customfield_10300': issueEpic,
                },
                {
                    'project': {'key': 'AAI'},
                    'summary': client + ' ' + source + ' ' + ehr + ' ' + impround + ' Go-Live',  #
                    'customfield_11603': {'value': 'Go-Live'},  # this is implementation phase
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,  # this is impround field. This is causing issue in upload.
                    'description': golivedesc,
                    'issuetype': {'name': 'Story'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},  # This is buildtype
                    'customfield_10300': issueEpic,
                },
            ]

            pprint.pprint(issue_story)

            # issueStory = jira.create_issues(field_list=issue_story)
            issueStory = jira.create_issues(field_list=issue_story)
            print('These are the created epic and story issues :' + str(issueEpic) + str(issueStory))

            # pprint.pprint(issues)
            # issueStory = str(issueStory)

            issueSitprep = str(issueStory[12]['issue'])
            issueSitexec = str(issueStory[13]['issue'])
            issueUatprep = str(issueStory[14]['issue'])
            issueUatexec = str(issueStory[15]['issue'])
            issueGoliveapprv = str(issueStory[16]['issue'])
            issueGolive = str(issueStory[17]['issue'])

            issue_subtask = [
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Obtain System Access',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub1osa,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Survey Data Quality',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub2sdq,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Define Testing Scope',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub3dts,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Project Team Testing Scope Review',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub4pttsr,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Entry Criteria Data Quality Analysis',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub5ecdqa,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Connector Hand-off Review',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub6chr,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Test Output and Project Artifacts',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub7topa,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Promotion approval to QA Environment',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitpsub8paqe,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitprep}

                },






                #!!!  next set of subtasks are created here

                {

                    'project': {'key': 'AAI'},
                    'summary': 'User Interface Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub1uit,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'MPI Query Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub2mqt,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'MPI Manual Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub3mmt,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Scrubbed Value Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub4svt,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'SIT Data Quality Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub5sdqt,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Patient Level Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub6plt,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Data Quality Summary Reporting',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub7dqsr,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Issue Remediation',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub8ir,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Regression Testing',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub9rt,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Promote to UAT',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': sitexecsub10pu,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueSitexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Client Presentation Deck',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub1cpd,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'UAT Scheduling and Agenda Expectations',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub2usae,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'UAT Tester System Access',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub3utsa,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'UAT Environment Smoke Test',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub4uest,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'UAT Test Cases',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub5utc,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'UAT Dry Run',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub6udr,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Provide Product Documentation',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub7ppd,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Provide Known Issues List',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatprepsub8pkil,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatprep}

                },


                #!!! Here we create sub tasks for UAT exec
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Client Training Demonstration',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub1ctd,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Client UAT Session(s)',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub2cus,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Client UAT Session(s)',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub2cus,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Completed Workbook Results Evaluation ',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub3cwre,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'UAT Results Summary Report ',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub4ursr,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Sign-off Draft ',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub5sd,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Issue Remediation',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub6ir,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Go-Live Approval',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': uatexecsub7gla,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueUatexec}

                },


            # Here the Go live approval sub tasks are created

                {

                    'project': {'key': 'AAI'},
                    'summary': 'Start Transition to Production Support',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub1stps,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Production Checkout Dry Run',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub2pcdr,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Promote to Production',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub3pp,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Production Checkout',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub4pc,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Production Create User Logins',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub5pcul,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Provide User Admin Training	',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub6puat,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'QA Support Productions for Initial Period',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub7qspip,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Complete Transition to Production Support',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': goliveapprvsub8ctps,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGoliveapprv}

                },

                #!! here the subtask for golive is created
                {

                    'project': {'key': 'AAI'},
                    'summary': 'Provision access to users (Production Support)',
                    'customfield_11609': {'value': source},  # this is the data source.
                    'customfield_11626': impround,
                    'description': golivesub1pau,
                    'issuetype': {'name': 'Sub-task'},
                    'customfield_11618': {'value': ehr},  # data source type
                    'customfield_11630': {'value': 'Analytics Implementation:951'},
                    'parent': {'key': issueGolive}

                },

            ]

            issueSubtask = jira.create_issues(field_list=issue_subtask)

            pprint.pprint(issueSubtask)

            print('This is the subtask that was just created :', str(issueSubtask))


        except Exception, e:
            print(e)



