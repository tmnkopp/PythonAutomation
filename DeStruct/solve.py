people = [3,2,2,1]
limit = 3
dp = []
dp.append([]) 
boat = 0
while len(people) > 0:   
    if (sum(dp[boat])) + people[0] <= limit: 
        dp[boat].append(people[0]) 
        people=people[1:] 
    else:
        dp.append([])
        boat+=1   
result = len(dp)
   
print(result) 
''' 
 ["adg","adh","adi","aeg","aeh","aei","afg","afh","afi"
 ,"bdg","bdh","bdi","beg","beh","bei","bfg","bfh","bfi"
 ,"cdg","cdh","cdi","ceg","ceh","cei","cfg","cfh","cfi"]

        # nums = [2,7,9,3,1]
        dp = [0] * len(nums)
        dp[0] = nums[0]
        dp[1] = nums[1]
        for i in range(2, len(nums)):
            dp[i] = max(dp[i-1], dp[i-2] + nums[i])
        return dp[len(dp)-1]
'''

