
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

import pprint

#Get 3 inputs from the user client, name, source
#Alternately this can also be pulled from the order form. but have a check in the middle to confirm by a user


import logging
LOG_FILENAME = 'JIRA_BUlkUploadCR.log'
logging.basicConfig(filename=LOG_FILENAME,level=logging.DEBUG)

logging.debug('This message should go to the log file')


#
# # Log Console Output
# logFile = open("logfile.log", "a")
# logFile.truncate()
# logFile.close()
#
#
# class Logger(object):
#     def __init__(self):
#         self.terminal = sys.stdout
#         self.log = open("logfile.log", "a")
#
#     def write(self, message):
#         self.terminal.write(message)
#         self.log.write(message)
#
#
# sys.stdout = Logger()


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

cursor.execute("select Client_Acronym, Data_Source_Acronym, CR_Name, cr_Important_Context, CR_Owner_Email_Address, TRY_CONVERT(date,insert_timestamp), ID, CR_WorkEffortEstimate from ARC_OrderFormValues where TRY_CONVERT(date,insert_timestamp)=CONVERT(DATE,GETDATE())")



# cursor.execute("select [Client Acronym], [Source Acronym],[CR Name],Context,Email,TRY_CONVERT(date,insert_timestamp), ID from ARC_OrderFormValues where TRY_CONVERT(date,insert_timestamp)='07-29-2017'")
tables = cursor.fetchall()

print (tables)
if not tables:
    print ('There are no JIRA tickets to be created: \n')

else:

    count=0
    for i in tables:
        count += 1

        client=i[0]
        source=i[1]
        crname=i[2]
        context=i[3]
        id1 = str(i[6])
        estimate = str(i[7])+'h'
        # watcher='dinesh.jayapathy@arcadiasolutions.com'
        # watcher=watcher.replace('@arcadiasolutions.com','')
        watcher=i[4].replace('@arcadiasolutions.com','')
        #print 'Here are the variables we need',count, client, source,order_name

        issue_d = {

        #     #This works perfectly. project name is not a valid field in jira. It has a different name. find that out and use it.
              #Actually, the project name is not needed. The project key AAI references Arcadia Analytics Implementations. So that is all we need.
            'project': {'key': 'AAI'},
            #'projectname': 'Arcadia Analytics Implementation',
            'summary': 'CR | '+client+' | '+source+' | '+crname,#The below fields don't map to JIRA till desc. The code works as such.
            #'epic name':client+' '+source+' '+ehr+' '+impround, ignore this field. Epic name populates from sumary.
            'customfield_11601': {'value': client}, #this is client
            # 'customfield_11601': {'id': '12196' }, #this is client. This is causing an error for MODA. Not sure why.
            'customfield_11609': {'value': source },#this is the data source. It should be an existing value. Else it will error out.Works now
            'customfield_11626':'Change Request', #this is impround field
            'description':context,
            'issuetype': {'name': 'Epic'},
            'customfield_11618':{'value':'Custom or Unknown'},
            'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
            'customfield_10301': crname , # Epic name. Mandatory field. For all new tickets.
            'assignee': {'name': watcher},
            #'timeoriginalestimate': '5',
            #'timetracking':{'originalEstimate': '4d','remainingEstimate':'1d'}, #Set estimated time to completion from CR form. Not working now.
            #'customfield_10005': 'value'[0][2].append('Next Step Outside Connector') # {'name':'Next Step Outside Connector'} #do this later. this is the sprint field.

            #jira.add_watcher('AAI-75148', 'siddhesh.narkar') #this is the script to add watcher. add issue.id instead of AAI and the reporter username from sql
        }

        pprint.pprint(issue_d)
        # logging.debug(pprint.pprint(issue_d))
        # logging.debug(watcher)
        # message = str("Encryption key does not match")
        # write_output(message)
        # print (watcher)
        issue = jira.create_issue(fields=issue_d)


        #Update the dashboard with the ticket number. Important. Works
        cursor.execute('''update ARC_OrderFormValues
        set jira_ticket=? where ID=?''', str(issue), id1)
        cnxn.commit()

        # logging.debug(issue.id)
        logging.debug('JIRA Ticket number:'+str(issue))
        logging.debug(issue_d)

        # logging.debug(watcher)
        # # jira.add_worklog(issue, newEstimate='7', adjustEstimate='manual', reduceBy='1', timeSpent='1m')
        #
        #issue.fields.timeoriginalestimate='5'
        # estimate='24'
        issue.update(timetracking={'originalEstimate': estimate})
        # #timeoriginalestimate
        # #print (issue)
        # # add the person in the email to watcher here.
        jira.add_watcher(issue.id, watcher)

        jira.add_comment(issue.id, 'Your CR has been Created')
