
import os

#os.chdir(r'D:\Clients\1047-OF-OPTUM\DEV\Data')
os.chdir(r'C:\DJ\Bidco UI\OPTUM\data\test')

#s=r'D:\Clients\1047-OF-OPTUM\DEV\Data'
s=r'C:\DJ\Bidco UI\OPTUM\data\test'
for i in os.listdir(s):

    if os.path.isfile(os.path.join(s, i)):
        #os.path.join(s, i)

        dr = (os.path.join(s, i))
        dest=dr.replace('.csv','_NH.csv')
        dr = '/'.join(dr.split('\\'))
        dest='/'.join(dest.split('\\'))

        #print dr
        #print dest



        with open(dr,'r') as f, open(dest,'w') as f1:
            next(f) # skip header line
            for line in f:
                f1.write(line)

    if i.endswith('01.csv'):
        os.remove(i)

for i in os.listdir(s):

    if os.path.isfile(os.path.join(s, i)):


        nh=(os.path.join(s, i))
        print nh
       # os.rename('nh','')
        os.rename(nh, nh.replace('_NH.csv', '.csv'))


    # if i.endswith('_NH.csv'):
    #     i.replace('_NH.csv','.csv')