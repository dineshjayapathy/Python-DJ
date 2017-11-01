
import jira.client
from jira.client import JIRA
import config
import pyodbc
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

#JIRA API connection happens here
options = {'server': 'https://jira.arcadiasolutions.com'}
jira = JIRA(options, basic_auth=(config.username, config.password))


iksprintmetrics = jira.search_issues('labels="InstallKit" and Sprint=708',maxResults=99999)


#sql Connection happens here
# cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=QDWSQLOPS01;DATABASE=AnalyticsMonitoring;Trusted_Connection=TRUE')
# cursor = cnxn.cursor()
# cursor.execute("select Client_Acronym, Data_Source_Acronym, CR_Name, cr_Important_Context, CR_Owner_Email_Address, TRY_CONVERT(date,insert_timestamp), ID, CR_WorkEffortEstimate,CR_date_due,CR_Finance_team_PID,CR_Scope from ARC_OrderFormValues where JIRA_Ticket is NULL and CR_Name is not null")

for i in iksprintmetrics:
    print i,i.fields.assignee,i.fields.summary,i.fields.status,round(float(i.fields.timespent or 0)/3600,2), i.fields.customfield_11601,i.fields.customfield_11502,i.fields.customfield_11609

ik_issue_id = []
for j in iksprintmetrics:
    # print j
    ik_issue_id.append(j)

item = []
count=1
for issue in ik_issue_id:
    # print issue.fields.project
    project = issue.fields.project
    item.append((count,issue,issue.fields.assignee,issue.fields.summary,issue.fields.status,round(float(issue.fields.timespent or 0)/3600,2),issue.fields.customfield_11601,issue.fields.customfield_11502
                 ,issue.fields.customfield_11609))
    # count+=1

print item
ik_df = pd.DataFrame.from_records(item,columns=['Count','Ticket','Assignee','Summary','status','Logged Hours','client','source1', 'source2'])
print ik_df

ik2=ik_df
#if using pycharm, use alt+f8 on the print dataframe line to add a breakpoint
#then click on debugger the bug icon next to run icon at the top.
#let it finish debugging, then go to debugger console at the bottom and under the variables you will see the dataframe variable. right click on that and say view as dataframe.

# print ik_df.groupby('Assignee').Ticket.count()
print ik2.groupby(['Assignee','status']).Ticket.count()
a=sns.boxplot(data=ik_df,x="Assignee",y="Logged Hours",)
a=sns.swarmplot(data=ik_df,x="Assignee",y="Logged Hours",color=".25")
# matrix.plot.bar()

plt.show(block=True)

