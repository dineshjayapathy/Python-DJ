import os
#import csv
import subprocess
import mmap
'''
Objective:
This file when run should ask the user for an input from a menu like: what would you like to do
a: encrypt file
b: get header
c: get file stats
Based on this input the functions get called and the user has to input more parameters if necessary after which he gets an output.

Author: Dinesh Jayapathy
Date: 04-13-2017
'''
def printitems(a):
    try:
        floc=raw_input('Enter the location of the files \n')
        print "The files are"
        b = 1
        for i in os.listdir(floc):
            os.chdir(floc)
            print b,i,str(os.path.getsize(i))+' Bytes'
            b=b+1

    except Exception,e:
        print e

def header(d):
    #open the file and print the top line

    with open('C:\DJ\Python-projects\Data\Behavioral_Risk_Factor_Data__Health-Related_Quality_of_Life__HRQOL_.csv',buffering=100) as f:
        for line in f:
            print line

def enc(a):
    for x in os.listdir(a):
        print x
    #encrypt file

def readencrypted(fpath):
    lines = 5
    s = raw_input('Enter the path of files:\n')
    try:
        for i in os.listdir(s):
            print i
            if os.path.isfile(os.path.join(s, i)):
                os.chdir(s)
                #print s
#			    print s

                dr = (os.path.join(s, i))  # works
                dr = '/'.join(dr.split('\\'))
				

                p = subprocess.Popen([r'C:\GnuPG\gpg.exe', '-d', dr]
                                     , shell=True
                                     , stdout=subprocess.PIPE
                                     , stderr=subprocess.PIPE
                                     )
                # print 'The linecount is'+str(sum(1 for _ in p.stdout))

                # lc = p.stdout.readline()
                # linecount = len(lc)
                # print linecount


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

                p.kill()


    except Exception,e:
        print e

def renamef():
    os.chdir(raw_input('Enter the location of the files \n'))
    print os.getcwd()

    try:
        a = raw_input('Enter the string to replace in the filename \n')
        b = raw_input('Enter what to replace it with \n')

        [os.rename(f, f.replace(a, b)) for f in os.listdir('.') if not f.startswith('.')]
        print 'Files have been renamed'

    except Exception, e:
        print e


def rowcount():
    s = raw_input('Enter the location of the files')
    for i in os.listdir(s):
        # print i
        if os.path.isfile(os.path.join(s, i)):
            dr = (os.path.join(s, i))  # works
            dr = '/'.join(dr.split('\\'))
            # print dr
            with open(dr) as f:
                for lineNum, l in enumerate(f):  # i is the count of lines starts from 0 so add 1.
                    pass
            print  'Line count for the file  {}  is {}'.format(i, lineNum + 1)


def mainfunction():
    try:

        userinput = raw_input("Enter an option \n a: Preview encrypted files \n b: Run 'File Parser' \n c: Get file statistics \n d: Rename files \n e: Get Rowcount on files \n f: Exit \n Enter a, b, c, d, e or f \n: ")

        if userinput == 'a':
            readencrypted('a')
            mainfunction()
        if userinput == 'b':

            p=raw_input('Enter the path \n')
            subprocess.call(['python','csv_parse_dev.py',p])
            mainfunction()

        if userinput == 'c':
            printitems('C:\DJ\Python-projects\DJ')
            mainfunction()

        if userinput == 'd':
            renamef()
            mainfunction()

        if userinput == 'e':
            rowcount()
            mainfunction()

        if userinput == 'f':
            exit()
            mainfunction()
        else:
            print('Invalid input! \n')
            mainfunction()
    except Exception,e:
        print e
        #mainfunction()

print '*'.center(100,'*')
print "Flat File Toolkit".center(100,' ')
print '*'.center(100,'*')
#Function calls go in here
mainfunction()



