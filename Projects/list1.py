import os
j=1
for i in set(os.listdir(r'C:\Users\dinesh\Documents\GitHub\2017v2\connector-queries\Extract\Custom Sources\MODA\PR-MODA\PR-LDH\SQL')):
    print i.replace('PRMODALDH_0_','')
    j+=1
print '\n'
k=1
for h in set(os.listdir(r'C:\Users\dinesh\Documents\GitHub\2017v2\connector-queries\StandardConnectors\eCW\10 TSQL Schemaless\SQL')):
    print k,h.replace('eCW_10Schemaless_','')
    k+=1
