#sum two numbers without dictionary. 

nums=[1,3,11,2,7]
target=9
# return: [3,4]
sol=[]

for i in range(len(nums)-1):
    print nums[i]+nums[i+1]
    if nums[i]+nums[i+1]==target:
        sol.append(i)
        sol.append(i+1)

print sol



















