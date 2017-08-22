
'''
This script can be used to identify delimiters and text qualifiers

'''


import csv
# with open(r'C:\DJ\Datathon\cdc_zika.csv','r') as a:
with open(r'C:\DJ\Datathon\inpatientCharges.csv', 'r') as a:

    # print a.read()
    # print a.readline()
    line1=a.readline().replace('\n','')
    # print a.readline(2)
    # print a.readlines()
    # b=csv.reader(a)
    # count=int(0)
    # for i in b :
    #     if count==0:
    #         line1=i
    #     count+=1

# header=' '.join(line1)
# print header
print line1
header=line1.split(',') #splits the string into separate elements based on the splitter

# print header
colCount=0
quoteCount=0
for i in header:
    # print i,colCount
    colCount+=1
    print i,colCount
    if i.startswith('"') and i.endswith('"'):
        quoteCount+=2

print 'Total columns ='+str(colCount)+' Total quotes ='+str(quoteCount)+'\n'
if quoteCount<colCount:
    print 'There are no text qualifiers'
else:
    print 'The text qualifier is "'


sniffer=csv.Sniffer()
dialect=sniffer.sniff(line1,delimiters=',|')
# print dialect.quotechar # this lists the default text qualifier
print 'the Delimiter is '+dialect.delimiter


# print csv.list_dialects()
#
# print dialect.quoting #this
# print dialect.doublequote



