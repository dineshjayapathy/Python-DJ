
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

import config


#Get 3 inputs from the user client, name, source

#Alternately this can also be pulled from the order form. but have a check in the middle to confirm by a user

client='TEST_CLIENT2'
order_name='TEST_CLIENT2'
source='TEST_source2'
ehr='TEST_EHR2'
impround='InitialBuild'
buildtype='Analytics Implementation:951'
exid='8899'

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

#count = 0
# for issue in issues_in_proj:
#      print(str(issue.fields.customfield_11601),'is project name ')
# #
    # print(project, ' This is project')

#     count = count + 1

    # implementationRoundVar = ""
    # if hasattr(issue, 'fields.customfield_11626'):
    #     implementationRoundVar = issue.fields.customfield_11626
    #
    # try:
    #     analyticsEnvironmentVar = issue.fields.customfield_11007
    # except:
    #     analyticsEnvironmentVar = None
    #
    # try:
    #     impactedDataSourceVar = issue.fields.customfield_10301
    #     print (impactedDataSourceVar)
    # except:
    #     impactedDataSourceVar = None
    #
    # try:
    #     parentKeyVar = issue.fields.parent.key
    # except:
    #     parentKeyVar = None
    #
    # try:
    #     customContractVar = issue.fields.customfield_11630.value
    #     print (customContractVar)
    # except:
    #     customContractVar = None
    #
    # try:
    #     assigneeVar = issue.fields.assignee.key
    #
    # except:
    #     assigneeVar = None
    #
    #     try:
    #         customerNameVar = issue.fields.customfield_11601.value
    #     except:
    #         customerNameVar = None

#print (assigneeVar)

  #  print ('This ticket',issue.fields.summary.encode('utf8'),"is assigned to " ,assigneeVar)




issue_list = [
# # {
# #     'project': {'id': 123},
# #     'summary': 'First issue of many',
# #     'description': 'Look into this one',
# #     'issuetype': {'name': 'Bug'},
# # },
{
#     #This works perfectly. project name is not a valid field in jira. It has a different name. find that out and use it.
      #Actually, the project name is not needed. The project key AAI references Arcadia Analytics Implementations. So that is all we need.
    'project': {'key': 'AAI'},
    #'projectname': 'Arcadia Analytics Implementation',
    'summary': order_name+' '+source+' '+ehr+' '+impround,#The below fields don't map to JIRA till desc. The code works as such.
    #'epic name':client+' '+source+' '+ehr+' '+impround,
    #'customer contract id':buildtype,
    #'data source name':source,
   # 'customer name': order_name,
    #'data source type': ehr,
   # 'implementation round':impround,
    'description':'This is a test epic.',
    'issuetype': {'name': 'Epic'},
    'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
    'customfield_10301': 'test' , # Epic name. Mandatory field. For all new tickets.

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
    # 'description':'test',
    # 'issuetype': {'name': 'Story'},
    # 'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
    # 'customfield_10301': 'test',  # Epic name. Mandatory field. For all new tickets.

# }

]

issues = jira.create_issues(field_list=issue_list)



#This code works!! Ticket was uploaded to JIRA.

# issue_dict = {
#     'project': {'key': 'AAI'},
#     'summary': 'Test from py',
#     'description': 'Test',
#     'issuetype': 'Epic',
#    'customfield_11630':{'value':'Unknown'},#customer contract id. manadatory For all new tickets.
#    'customfield_10301':'test' #Epic name. Mandatory field. For all new tickets.
# }
# new_issue = jira.create_issue(fields=issue_dict)
#

# 'project': {'key': 'AAI'},
# 'projectname': 'Arcadia Analytics Implementation',
# # 'summary': order_name+source+ehr+impround,
# # 'epicname':client+source+ehr+impround,
# # 'customer contract id':buildtype,
# # 'data source name':source,
# # 'customer name': order_name,
# # 'data source type': ehr,
# # 'implementation round':impround,
# 'description':'This is a test epic.',
# 'issuetype': {'name': 'Epic'},
# 'customfield_11630': {'value': 'Unknown'},  # customer contract id. manadatory For all new tickets.
# 'customfield_10301': 'test',  # Epic name. Mandatory field. For all new tickets.



