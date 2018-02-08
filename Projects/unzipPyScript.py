'''
This script unzip's all the zip files in a location.
Accepts 3 parameters: location of file, password, destination. 
If there is no pw then just hit enter without any input

'''
import os
import subprocess

def unzip():
    s = raw_input('Enter the path of files:\n')
    pw=raw_input('Enter the password:\n')
    dest=raw_input('Enter the destination path:\n')

    dest = ' -o' + dest
    pw = ' -p' + pw
    print pw
    try:
        for i in os.listdir(s):
            print i
            if i.endswith('.zip'):
                os.chdir(s)
                dr = (os.path.join(s, i))  # works
                dr = '/'.join(dr.split('\\'))
                subprocess.call(r'"C:\Program Files\7-Zip\7z.exe" x '+dr+pw+dest)
    except Exception,e:
        print e

unzip()