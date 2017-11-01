import os
p=raw_input("Enter the file path:\n")
r=int(raw_input("Enter line number to read: \n"))
try:

    for i in os.listdir(p):
        if os.path.isfile(os.path.join(p, i)):
            os.chdir(p)
            count=0
            with open(i) as f:#change your file path here
                for i in f:

                    count+=1
                    if count-1<=r<=count+1:
                        print count, i

                        #
                        # if count == 10000:#enter your line number here
                        #     print count, i

except Exception, e:
    print e