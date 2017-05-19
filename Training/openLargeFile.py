
import os
import subprocess


def readencrypted(fpath):
    lines = 5
    s = raw_input('Enter the path of files:\n')
    # with open(r"C:\DJ\Bidco UI\BIUNITED\data\2017_04_06_133709_032_081_PlanProduct_01_1.csv") as infile:
    #     for line in infile:
    #         print line
    for i in os.listdir(s):
        print i
        if os.path.isfile(os.path.join(s, i)) and i.endswith('.txt'):

            dr = (os.path.join(s, i))  # works
            dr = '/'.join(dr.split('\\'))

            with open(dr) as infile:
                head = [next(infile) for x in xrange(5)]
                #print str(head)
                print "\n".join(head)

                # for line in infile:
                #     head = [next(infile) for x in xrange(5)]
                #     print head
                #     print line




#r=raw_input('Enter the file path: \n ')
readencrypted('a')