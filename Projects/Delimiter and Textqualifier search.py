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
                possible = [',', '\t', '-', '|']
                count = {}
                for delim in possible:
                    count[delim] = first_line.count(delim)

                mostFreqDelim = max(count.iteritems(), key=operator.itemgetter(1))[0]

                #header = first_line.replace(mostFreqDelim, ',').replace()


                possibleq = ['|', '"']
                countq = {}
                for textq in possibleq:
                    countq[textq] = second_line.count(textq)

                #print countq.values()[0]
                if countq.values()[0]!=0 or countq.values()[1]!=0:
                    mostfreqTextq=max(countq.iteritems(), key=operator.itemgetter(1))[0]

                else:
                    mostfreqTextq='NULL'

                header = first_line.replace(mostFreqDelim, ',').replace(mostfreqTextq,'')

                #header=first_line.replace(mostFreqDelim,',')
                #to input into registration
                if mostFreqDelim == '\t':
                    mostFreqDelim = r'\t'
                mostFreqDelim="'"+mostFreqDelim+"'"
                if mostfreqTextq != 'NULL':
                    mostfreqTextq="'"+mostfreqTextq+"'"
                print 'delimiter is \n'+ '%s' % str(mostFreqDelim)
                print 'textqualifier is \n' + '%s' % str(mostfreqTextq)
                print 'column list is \n' +'%s' % header
                print '\n'

                print ''\
                    'DECLARE @returnValue INT;\n'\
                    'DECLARE @PreSource_Acronym VARCHAR(MAX) = \'PR-UMEM\';\n'\
                    'DECLARE @Table_Name VARCHAR(MAX) = \'MEMBER_ELIGIBILITY\';\n'\
                    'DECLARE @File_Pattern VARCHAR(MAX) = \'_Membership_\';\n'\
                    "DECLARE @Delimiter VARCHAR(MAX) = %s;" % mostFreqDelim
                print 'DECLARE @TextQualifier VARCHAR(MAX) = {};\n'\
                    'DECLARE @Truncate BIT = 0;\n'\
                    'DECLARE @IsFixedWidth BIT = 0;\n'\
                    'DECLARE @NeedsHeader BIT = 0;\n'\
                    'DECLARE @NeedsRowNumber BIT = 0;\n'\
                    'DECLARE @CheckHeader BIT = NULL;\n' \
                    'DECLARE @ Columns VARCHAR(MAX) = {}'.format(mostfreqTextq,header)
                print \
                    'DECLARE @ CustomMappingName VARCHAR(MAX) = NULL;'\
                    '-- END PARAMS'

                p.kill()
    except Exception,e:
        print e

if __name__=="__main__":
    readencrypted('a')