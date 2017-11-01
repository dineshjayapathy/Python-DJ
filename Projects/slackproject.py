from slacker import Slacker
import pprint

slack = Slacker('xoxp-3146814148-65642606336-144303274499-31ba43a775509be08ab82d7760ebcb46')

# Send a message to #general channel
# slack.chat.post_message('#installkit', 'Hi!')


# Get users list
response = slack.users.list()
users = response.body['members']
# print response
# for i in users:
#     print i
# Upload a file ha ha ha
#slack.files.upload('hello.txt')
#
# for i in users:
#     pprint.pprint (i)

# for i in users:
    # print i["name"], i["profile"]["real_name"]

# pprint.pprint (slack.groups.info('G5ZL888VC'))
# print slack.channels.info(slack.groups.info('G5ZL888VC'))

import json

response=slack.channels.list()

# for i in response.raw:
# print response.raw
# pprint.pprint(response.raw)

from collections import namedtuple


a=json.loads(response.raw)
# print a
# print json.dumps(a,indent=5,sort_keys=True)
ch=json.dumps(a,indent=5,sort_keys=True)
a=list(ch)


# data = '{"name": "John Smith", "hometown": {"name": "New York", "id": 123}}'

data=ch
# Parse JSON into an object with attributes corresponding to dict keys.
x = json.loads(data, object_hook=lambda d: namedtuple('X', d.keys())(*d.values()))

j=x.channels


# print ch

print x.channels[0]
for b in range(2000):
    print '\n'
    for p in x.channels[b]:
        print p["name"]
        # print '\n'
# X(previous_names=[], is_general=False, name_normalized=u'acp-delivery',
# print x.
#this lists all the channels
# for i in j:
#     print i


# pprint.pprint(ch)


# print slack.api_call(channels.list())
#
# if response.body["ok"] != True:
#     sys.stderr.write(response.body["error"])
#     break
#
# if response.body["messages"] == []:
#     break
#
# for message in response.body["messages"]:
#     if "text" in message:
#         print message["text"]
#
# l = message["ts"]