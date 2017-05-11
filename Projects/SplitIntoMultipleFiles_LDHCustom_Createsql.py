'''
This works fine. Might need a little tweaking as the first file is not generated correctly.
Other files are fine.
'''
import re
def files():
    row = ''
    n = 0
    while True:
        with open('C:\DJ\Python-projects\DJ\Arcadia\output\createsql\Create Table SQL LDH v2.txt') as i:
            for row in i:
                if re.findall(r'^create table\s\w+', row):
                    a = ''.join(re.findall(r'^create table\s\w+', row)).replace('create table ', '')
                    #print a
                    yield open('C:\DJ\Python-projects\DJ\Arcadia\output\createsql\sql\PRMODALDH_0_%s.sql' % a, 'w')
pat = '------------------------------'
fs = files()

outfile = next(fs)
with open('C:\DJ\Python-projects\DJ\Arcadia\output\createsql\Create Table SQL LDH v2.txt') as infile:
    for line in infile:
        if pat not in line:
            outfile.write(line) #this is where the bulk of the text is written into the separate file
        else:   #this is for the line where we encounter the pattern --- and then split it.
            exit()
            '''items = line.split(pat)
            outfile.write(items[0])
            for item in items[1:]:
                outfile = next(fs)
                outfile.write(item)'''



