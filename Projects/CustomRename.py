import os
import time
print (time.strftime("%m%d%Y"))
a=time.strftime("%m%d%Y")
# os.chdir(raw_input('Enter the location of the files \n'))
# os.chdir(r'D:\clients\0833-OF-UHGCL\DEV\Data')
os.chdir(r'C:\DJ\Python-projects\Rename\bup')
# print os.getcwd()
try:
    count=1
    for f in os.listdir('.'):
        if not f.startswith('.'):
            os.rename(f, str(02).zfill(2)+'_ARCADIA_PROD_UHC_'+str(a)+'.csv')
            count+=1
    # for i in os.listdir('.'):
        # print i
    # print 'Files have been renamed'
except Exception, e:
    print e