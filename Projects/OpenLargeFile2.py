import os
p=raw_input("Enter the file path:\n")
r=raw_input("Enter number of lines to read: \n")
try:

    for i in os.listdir(p):
        if os.path.isfile(os.path.join(p, i)):
            os.chdir(p)
            count=0
            print i
            with open(i) as f:#change your file path here
                for i in f:
                    if count<=int(r):

                        print count, i
                        count+=1
                        #
                        # if count == 10000:#enter your line number here
                        #     print count, i

except Exception, e:
    print e