'''
This works fine. Might need a little tweaking as the first file is not generated correctly.
Other files are fine.
'''
import re
def files():
    row = ''
    n = 0
    while True:
        with open('C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\Prestaging Extract queries_LDH.txt') as i:
            for row in i:
                if re.findall(r'^from\s\w+', row):
                    a = ''.join(re.findall(r'^from\s\w+', row)).replace('from ', '')
                    #print a
                    yield open('C:\DJ\Python-projects\DJ\Arcadia\output\dir\%s.sql' % a, 'w')
pat = '-----------------------------------------------------------------------'
fs = files()

outfile = next(fs)
with open('C:\Users\dinesh\Documents\GitHub\Python-DJ\Training\data\Prestaging Extract queries_LDH.txt') as infile:
    for line in infile:
        if pat not in line:
            outfile.write((line.replace('where a.createddate >= ?Lower_Bound?','')).replace('and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?','')) #this is where the bulk of the text is written into the separate file
        else:   #this is for the line where we encounter the pattern --- and then split it.
            items = line.split(pat)
            outfile.write(items[0])
            for item in items[1:]:
                outfile = next(fs)
                outfile.write(item)



