import os
import subprocess
def realargefile(fpath):

    s = raw_input('Enter the path of files:\n')
    for i in os.listdir(s):
        print i
        if os.path.isfile(os.path.join(s, i)) and i.endswith('MEDICAL.txt'):

            dr = (os.path.join(s, i))  # works
            dr = '/'.join(dr.split('\\'))

            with open(dr) as infile:
                head = [next(infile) for x in xrange(100)]
                #print str(head)
                print "\n".join(head)
realargefile('a')