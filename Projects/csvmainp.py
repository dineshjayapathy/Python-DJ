''' This tool can be used to open large flat files (even 2GB -10Gb)
Currently it is scripted to read files with extension .xls
change that per your need before running the script
If the data in the file is smaller than the sample size it will error out.
this reads the files from the input and creates the sample output
'''
import os




def readlargefile(fpath):
    s = raw_input('Enter the file path of source:\n')
    #o= raw_input('Enter the file path of output where you want the samples: \n')
    sz=int(raw_input('Enter the sample size: \n'))
    for i in os.listdir(s):
        #print i
        if os.path.isfile(os.path.join(s, i)) and i.endswith('.csv'):
            #f = open('C:\DJ\Bidco UI\OPTUM\data\Sample Athena -Optum feed\\' + i , 'w')
            #f = open(os.path.join(o,i), 'w')

            dr = (os.path.join(s, i))  # works
            dr = '/'.join(dr.split('\\'))

            with open(dr) as infile:
                head = [next(infile).rstrip() for x in xrange(sz)]
                #print "\n".join(head)
                for u in infile:
                    print u

                #f.write("\n".join(head))

                # first_line = infile.split('\n', 1)[0]
                # second_line = infile.split('\n', 1)[1]
                # # line_count = len(file.split('\n', 1))
                # # print 'First line is \n' + str(first_line)
                # # print 'Line count is \n' + str(line_count)
                # possible = [',', '\t', '-', '|']
                # count = {}
                # for delim in possible:
                #     count[delim] = first_line.count(delim)
                #
                # mostFreqDelim = max(count.iteritems(), key=operator.itemgetter(1))[0]
                #
                # # header = first_line.replace(mostFreqDelim, ',').replace()
                #
                #
                # possibleq = ['|', '"']
                # countq = {}
                # for textq in possibleq:
                #     countq[textq] = second_line.count(textq)
                #
                # # print countq.values()[0]
                # if countq.values()[0] != 0 or countq.values()[1] != 0:
                #     mostfreqTextq = max(countq.iteritems(), key=operator.itemgetter(1))[0]
                #
                # else:
                #     mostfreqTextq = 'NULL'
                #
                # header = first_line.replace(mostFreqDelim, ',').replace(mostfreqTextq, '')
                #
                # # header=first_line.replace(mostFreqDelim,',')
                # # to input into registration
                # if mostFreqDelim == '\t':
                #     mostFreqDelim = r'\t'
                # mostFreqDelim = "'" + mostFreqDelim + "'"
                # if mostfreqTextq != 'NULL':
                #     mostfreqTextq = "'" + mostfreqTextq + "'"
                # print 'delimiter is \n' + '%s' % str(mostFreqDelim)
                # print 'textqualifier is \n' + '%s' % str(mostfreqTextq)
                # print 'column list is \n' + '%s' % header
                # print '\n'
                #
                # print '' \
                #       'DECLARE @returnValue INT;\n' \
                #       'DECLARE @PreSource_Acronym VARCHAR(MAX) = \'PR-UMEM\';\n' \
                #       'DECLARE @Table_Name VARCHAR(MAX) = \'MEMBER_ELIGIBILITY\';\n' \
                #       'DECLARE @File_Pattern VARCHAR(MAX) = \'_Membership_\';\n' \
                #       "DECLARE @Delimiter VARCHAR(MAX) = %s;" % mostFreqDelim
                # print 'DECLARE @TextQualifier VARCHAR(MAX) = {};\n' \
                #       'DECLARE @Truncate BIT = 0;\n' \
                #       'DECLARE @IsFixedWidth BIT = 0;\n' \
                #       'DECLARE @NeedsHeader BIT = 0;\n' \
                #       'DECLARE @NeedsRowNumber BIT = 0;\n' \
                #       'DECLARE @CheckHeader BIT = NULL;\n' \
                #       'DECLARE @ Columns VARCHAR(MAX) = {}'.format(mostfreqTextq, header)
                # print \
                #     'DECLARE @ CustomMappingName VARCHAR(MAX) = NULL;\n' \
                #     '-- END PARAMS'
                #

            f.close()
readlargefile('a')