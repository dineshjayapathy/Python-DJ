import pyodbc
import os
import subprocess
import operator

def readencrypted(fpath):
    lines = 5
    s = raw_input('Enter the path of files:\n')
    try:
        for i in os.listdir(s):
            print i
            if os.path.isfile(os.path.join(s, i)):

                dr = (os.path.join(s, i))  # works
                dr = '/'.join(dr.split('\\'))

                p = subprocess.Popen([r'C:\Program Files (x86)\GNU\GnuPG\pub\gpg.exe', '-d', dr]
                                     , shell=True
                                     , stdout=subprocess.PIPE
                                     , stderr=subprocess.PIPE
                                     )

                counter = 1
                file = ''
                while counter <= lines:
                    # print p.stdout.readline()+'\n'
                    l = p.stdout.readline()
                    file = file + l
                    counter += 1
                if file != '':
                    print file


                else:
                    print p.stderr.readline() + '\ncheck the filename/directory \ncheck the decryption key'
                first_line = file.split('\n', 1)[0]
                second_line = file.split('\n', 1)[1]
                #line_count = len(file.split('\n', 1))

                #print 'First line is \n' + str(first_line)
                #print 'Line count is \n' + str(line_count)
               # print 'first line is \n'+ file.split('\n')[0]
                possible = [',', '\t', '-', '|','	']


                count = {}
                countq={}

                for delim in possible:
                    count[delim] = first_line.count(delim)

                mostFreqDelim = max(count.iteritems(), key=operator.itemgetter(1))[0]

                possibleq = ['|', '"']
                for textq in possibleq:
                    countq[textq] = second_line.count(textq)


                print countq.values()[0]
                if countq.values()[0]!=0:
                    mostfreqTextq=max(countq.iteritems(), key=operator.itemgetter(1))[0]
                else:
                    mostfreqTextq='None'



                print 'delimiter is \n'+ '#%s#' % str(mostFreqDelim)
                print 'textqualifier is \n' + '#%s#' % str(mostfreqTextq)

                p.kill()
    except Exception,e:
        print e



if __name__=="__main__":
    readencrypted('a')