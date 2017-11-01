count = 0
with open(r"C:\DJ\MISC\data\20170815123912_CAREMOUNT_IPA_CLAIMS_PHARMACY_EXTRACT_ADHOC") as f:#change your file path here
    for i in f:
        count+=1
        # print i
        if count == 10000:#enter your line number here
            print count, i
            # count += 1

