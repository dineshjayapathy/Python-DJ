
import os
'''
def file_len(fname):
    with open(fname) as f:
        for i, l in enumerate(f):#i is the count of lines starts from 0 so add 1.
            pass
    return i + 1


print file_len(r'C:\DJ\Datathon\NY Taxi\yellow_tripdata_2016-01.csv')

'''


s=raw_input('Enter the location of the files')

for i in os.listdir(s):
    #print i
    if os.path.isfile(os.path.join(s, i)):
        dr = (os.path.join(s, i))  # works
        dr = '/'.join(dr.split('\\'))
        #print dr
        with open(dr) as f:
            for lineNum, l in enumerate(f):  # i is the count of lines starts from 0 so add 1.
                pass
        print  'Line count for the file  {}  is {}'.format(i,lineNum + 1)