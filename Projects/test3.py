import pprint

# a={u'status': u'Success', u'input_fields': {'project': {'key': 'AAI'}, 'description': '\n\n* Source EHR or other source system access \n* Arcadia Analytics user interface and database access\n\n', 'parent': {'key': 'AAI-76890'}, 'issuetype': {'name': 'Sub-task'}, 'customfield_11609': {'value': u'NDS'}, 'customfield_11626': u'Clinical Custom [File in Unknown Schema]', 'customfield_11618': {'value': u'Flat File'}, 'customfield_11630': {'value': 'Analytics Implementation:951'}, 'summary': 'Obtain System Access'}, u'issue': <JIRA Issue: key=u'AAI-76891', id=u'180852'>, u'error': None}, {u'status': u'Success', u'input_fields': {'project': {'key': 'AAI'}, 'description': '* Review client survey results that were taken before development started, if no survey has been done start client interaction which will set data expectations for \xe2\x80\x9cCompare\xe2\x80\x9d step.', 'parent': {'key': 'AAI-76890'}, 'issuetype': {'name': 'Sub-task'}, 'customfield_11609': {'value': u'NDS'}, 'customfield_11626': u'Clinical Custom [File in Unknown Schema]', 'customfield_11618': {'value': u'Flat File'}, 'customfield_11630': {'value': 'Analytics Implementation:951'}, 'summary': 'Survey Data Quality'}, u'issue': "<JIRA Issue: key=u'AAI-76892', id=u'180853'>", u'error': None}

a={'error': None,
 'input_fields': {'customfield_11609': {'value': 'NDS'},
                   'customfield_11618': {'value': 'Flat File'},
                   'customfield_11626': 'Clinical Custom [File in Unknown Schema]',
                   'customfield_11630': {'value': 'Analytics Implementation:951'},
                   'description': '* Review client survey results that were taken before development started, if no survey has been done start client interaction which will set data expectations for \xe2\x80\x9cCompare\xe2\x80\x9d step.',
                   'issuetype': {'name': 'Sub-task'},
                   'parent': {'key': 'AAI-76890'},
                   'project': {'key': 'AAI'},
                   'summary': 'Survey Data Quality'},
 'issue': "< JIRA Issue: key=u'AAI-76891', id=u'180852' >",
                                'status': 'Success'}

b={'error': None,
 'input_fields': {'customfield_11609': {'value': 'NDS'},
                   'customfield_11618': {'value': 'Flat File'},
                   'customfield_11626': 'Clinical Custom [File in Unknown Schema]',
                   'customfield_11630': {'value': 'Analytics Implementation:951'},
                   'description': '\n\n* Source EHR or other source system access \n* Arcadia Analytics user interface and database access\n\n',
                   'issuetype': {'name': 'Sub-task'},
                   'parent': {'key': 'AAI-76890'},
                   'project': {'key': 'AAI'},
                   'summary': 'Survey Data Quality'},
 'issue': "< JIRA Issue: key= 'AAI-76892', id= '180853' >",
                                'status': 'Success'}



# pprint.pprint(a)
# pprint.pprint(b)

c=[]
c.append(a)
#c=list(a)
c.append(b)
# pprint.pprint(c)

print c[0]['issue']


print c[1]['issue']
