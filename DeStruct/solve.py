 
nums = [5,7,7,8,8,10]
target = 8
dp=(-1,-1)
for i in range(len(nums)):
    if nums[i]==target:
        if dp[0] < 0 :
           dp = (i,-1)
        elif dp[0] >= 0: 
            dp = (dp[0], i)

print(dp)

