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

options = {'server': 'https://jira.arcadiasolutions.com'}
jira = JIRA(options, basic_auth=(config.username, config.password))

import sys

reload(sys)
sys.setdefaultencoding('utf-8')

today = datetime.now()
startTime = today - timedelta(days=2)
# endTime=startTime+timedelta(days=3)
startTime = startTime.strftime("%Y/%m/%d")

# issues_in_proj = jira.search_issues('updatedDate > "'+startTime+'" AND updatedDate < "'+endTime+'" and project in ("Arcadia Analytics Implementation") order by updated',maxResults=99999)
issues_in_proj = jira.search_issues(
    'updatedDate > "' + startTime + '" and project in ("Arcadia Analytics Implementation") order by updated',
    maxResults=99999)

cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
cursor = cnxn.cursor()

count = 0

# print(len(issues_in_proj))

for issue in issues_in_proj:

    count = count + 1

    implementationRoundVar = ""
    if hasattr(issue, 'fields.customfield_11626'):
        implementationRoundVar = issue.fields.customfield_11626

    try:
        analyticsEnvironmentVar = issue.fields.customfield_11007
    except:
        analyticsEnvironmentVar = None

    try:
        impactedDataSourceVar = issue.fields.customfield_11628
    except:
        impactedDataSourceVar = None

    try:
        parentKeyVar = issue.fields.parent.key
    except:
        parentKeyVar = None

    try:
        customContractVar = issue.fields.customfield_11630.value
    except:
        customContractVar = None

    try:
        assigneeVar = issue.fields.assignee.key
    except:
        assigneeVar = None

        try:
            customerNameVar = issue.fields.customfield_11601.value
        except:
            customerNameVar = None

        try:
            dueDateVar = dateutil.parser.parse(issue.fields.duedate)
        except:
            dueDateVar = None

        cursor.execute(
            "INSERT INTO [AnalyticsMonitoring].[staging].[jira_ticket] ([issue],[summary],[timeSpent],[timeEstimate],[originalTimeEstimate],[epicLink],[issueType],[parentKey],[impactedDataSource],[issuePriority],[analyticsEnvironment],[status],[implementationRound],[implementationPhase],[customerContract],[sourceName],[sourceType],[assignee],[ticketCreated],[ticketUpdated],[customerName],[dueDate]) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
            , issue.key
            , issue.fields.summary.encode('utf8')
            , str(issue.fields.timespent)
            , issue.fields.timeestimate
            , issue.fields.timeoriginalestimate
            , str(issue.fields.customfield_10300).encode('utf8')
            , str(issue.fields.issuetype).encode('utf8')
            , parentKeyVar
            , str(impactedDataSourceVar).encode('utf8')
            , str(issue.fields.priority).encode('utf8')
            , str(analyticsEnvironmentVar).encode('utf8')
            , str(issue.fields.status).encode('utf8')
            , str(issue.fields.customfield_11626).encode('utf8')
            , str(issue.fields.customfield_11603).encode('utf8')
            , str(customContractVar)
            , str(issue.fields.customfield_11609).encode('utf8')
            , str(issue.fields.customfield_11618).encode('utf8')
            , str(assigneeVar)
            , dateutil.parser.parse(issue.fields.created)
            , dateutil.parser.parse(issue.fields.updated)
            , str(customerNameVar).encode('utf8')
            , dueDateVar)
        cnxn.commit()

    if issue.fields.timespent != None or issue.fields.timespent != "None":

        worklogs = jira.worklogs(issue.key)
        for worklog in worklogs:

            try:
                updateAuthorVar = worklog.updateAuthor.key
            except:
                updateAuthorVar = None

            cursor.execute(
                "INSERT INTO [AnalyticsMonitoring].[staging].[jira_worklog] ([issue],[workLoggedID],[workStarted],[workUpdated],[workCreated],[workLogged],[workAuthor]) VALUES (?,?,?,?,?,?,?)"
                , issue.key
                , worklog.id
                , dateutil.parser.parse(worklog.started)
                , dateutil.parser.parse(worklog.updated)
                , dateutil.parser.parse(worklog.created)
                , worklog.timeSpent
                , str(updateAuthorVar).encode('utf8'))
        cnxn.commit()

    issueChange = jira.issue(issue.key, expand='changelog')
    changelog = issueChange.changelog

    for history in changelog.histories:
        for item in history.items:
            if item.field == 'status':
                cursor.execute(
                    "INSERT INTO [AnalyticsMonitoring].[staging].[jira_changelog] ([issue],[changeID],[changeAuthor],[fromState] ,[toState],[changeDate]) VALUES (?,?,?,?,?,?)"
                    , issue.key
                    , history.id
                    , str(history.author.key).encode('utf8')
                    , str(item.fromString).encode('utf8')
                    , str(item.toString).encode('utf8')
                    , dateutil.parser.parse(history.created))
                cnxn.commit()

cursor.execute("exec [AnalyticsMonitoring].dbo.jiraTicketUpsert")
cnxn.commit()
cursor.execute("exec [AnalyticsMonitoring].dbo.jiraWorklogUpsert")
cnxn.commit()
cursor.execute("exec [AnalyticsMonitoring].dbo.jiraChangelogUpsert")
cnxn.commit()

cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
cursor = cnxn.cursor()
issues_in_proj = jira.search_issues(
    '(Sprint in openSprints() or Sprint in closedSprints() or Sprint in futureSprints()) and project="AAI" and updatedDate > "' + startTime + '" order by updated',
    maxResults=99999)
for issue in issues_in_proj:
    for sprint in issue.fields.customfield_10005:
        for x in sprint.split(','):
            line = x.strip()
            # print(line)
            if line[:9] == "startDate":
                startDate = line[10:len(line)]
                if startDate == "<null>":
                    startDate = None
                else:
                    startDate = dateutil.parser.parse(startDate)
                    # print (startDate)
            elif line[:7] == "endDate":
                endDate = line[8:len(line)]
                if endDate == "<null>":
                    endDate = None
                else:
                    endDate = dateutil.parser.parse(endDate)
            elif line[:12] == "completeDate":
                completeDate = line[13:len(line)]
                if completeDate == "<null>":
                    completeDate = None
                else:
                    completeDate = dateutil.parser.parse(completeDate)
                    # print (completeDate)
            elif line[:5] == "state":
                state = line[6:len(line)]
                # print (state)
            elif line[:4] == "name":
                name = line[5:len(line)]
            elif line[:4] == "com.":
                sprintNumber = line.split("id=", 1)[1]

                # sprintType=name.split('|', 1)[0].rstrip()
                # sprintName=name.split('|', 1)[1].lstrip()
                # print (name)
                # print(sprintName)
                # print(sprintType)
    # print(issue.key,name,state,startDate,endDate,completeDate)
    cursor.execute(
        "INSERT INTO [AnalyticsMonitoring].[staging].[jira_sprints] ([issue],[sprintName],[sprintNumber],[sprintState],[completeDate],[startDate],[endDate]) VALUES(?,?,?,?,?,?,?)"
        , issue.key
        , str(name).encode('utf8')
        , sprintNumber
        , str(state).encode('utf8')
        , completeDate
        , startDate
        , endDate
        )
    cnxn.commit()

cursor.execute("exec [AnalyticsMonitoring].dbo.jiraSprintUpsert")
cnxn.commit()
cnxn.close()
sys.exit()