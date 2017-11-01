import filecmp
import os

# Determine the items that exist in both directories
d1_contents = set(os.listdir(r'C:\DJ\MISC\test\1'))
d2_contents = set(os.listdir(r'C:\DJ\MISC\test\2'))
common = list(d1_contents & d2_contents)
common_files = [ f
                for f in common
                if os.path.isfile(os.path.join(r'C:\DJ\MISC\test\1', f))
                ]
print 'Common files:', common_files

# Compare the directories
match, mismatch, errors = filecmp.cmpfiles('example/dir1',
                                           'example/dir2',
                                           common_files)
#print 'Match:', match
#print 'Mismatch:', mismatch
#print 'Errors:', errors

print set(d1_contents)
print d2_contents
