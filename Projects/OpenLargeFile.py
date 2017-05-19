''' This tool can be used to open large flat files (even 2GB -10Gb)
this reads the files from the input and creates the sample output
'''
import os

def readlargefile(fpath):
    s = raw_input('Enter the file path of source:\n')
    o= raw_input('Enter the file path of output where you want the samples: \n')
    sz=int(raw_input('Enter the sample size: \n'))
    for i in os.listdir(s):
        print i
        if os.path.isfile(os.path.join(s, i)) and i.endswith('.txt'):
            #f = open('C:\DJ\Bidco UI\OPTUM\data\Sample Athena -Optum feed\\' + i , 'w')
            f = open(os.path.join(o,i), 'w')

            dr = (os.path.join(s, i))  # works
            dr = '/'.join(dr.split('\\'))

            with open(dr) as infile:
                head = [next(infile).rstrip() for x in xrange(sz)]
                print "\n".join(head)
                f.write("\n".join(head))
            f.close()
readlargefile('a')