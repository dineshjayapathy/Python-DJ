import os
import numpy as np
import pandas as pd

s=raw_input('Enter the location of the files')

j=0
header=['TaskID','ExtractName','Records','AmountsField','Amount']
a=[]
b=[]
c=[]
d=[]
e=[]
f1=[]
g=[]
op=[]
for i in os.listdir(s):
    #print i
    if os.path.isfile(os.path.join(s, i)):
        j += 1
        dr = (os.path.join(s, i))  # works
        dr = '/'.join(dr.split('\\'))
        #print dr

        with open(dr) as f:
            for lineNum, l in enumerate(f):  # i is the count of lines starts from 0 so add 1.
                pass


        #print  '{} Line count for the file  {}  is {} '.format(j,i,lineNum + 1)

        if j==1:
            a.append(j)
            a.append(i)
            a.append(lineNum + 1)
            a.append('')
            a.append('')

        if j==2:
            b.append(j)
            b.append(i)
            b.append(lineNum + 1)
            b.append('')
            b.append('')
        if j==3:
            c.append(j)
            c.append(i)
            c.append(lineNum + 1)
            c.append('')
            c.append('')

        if j==4:
            d.append(j)
            d.append(i)
            d.append(lineNum + 1)
            d.append('')
            d.append('')
        if j==5:
            e.append(j)
            e.append(i)
            e.append(lineNum + 1)
            e.append('')
            e.append('')
        if j==6:
            f1.append(j)
            f1.append(i)
            f1.append(lineNum + 1)
            f1.append('')
            f1.append('')
        if j==7:
            g.append(j)
            g.append(i)
            g.append(lineNum + 1)
            g.append('')
            g.append('')
#print a, b, c, d, e, f, g, '\n'
op.append(header)
op.append(a)
op.append(b)
op.append(c)
op.append(d)
op.append(e)
op.append(f1)

print 'Here is the data that we need which is a list of lists \n'
print op+'\n'

a = np.asarray(op)

#a.tofile(r'C:\DJ\SQL\op1\foo.csv',sep=',') #works but saves as a singe line with []


df = pd.DataFrame(op)
print 'Here is the same data converted into a DataFrame \n'
print df
df.to_csv( 'C:\DJ\SQL\op1\CONTROL_TOTAL.csv',sep='|',index=False,header=False,quoting=True,doublequote='"')
