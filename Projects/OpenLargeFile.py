import os
import subprocess
#from __future__ import print_function
def readlargefile(fpath):
    s = raw_input('Enter the path of files:\n')
    for i in os.listdir(s):
        print i
        if os.path.isfile(os.path.join(s, i)) and i.endswith('.txt'):
            f = open('C:\DJ\Bidco UI\OPTUM\data\Sample Athena -Optum feed\\' + i , 'w')
            dr = (os.path.join(s, i))  # works
            dr = '/'.join(dr.split('\\'))

            with open(dr) as infile:
                head = [next(infile) for x in xrange(1000)]
                print "\n".join(head)
                f.write("\n".join(head))
            f.close()
readlargefile('a')