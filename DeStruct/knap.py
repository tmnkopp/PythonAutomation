
def solve():
    nums = [2,7,9,3,1]

    def rob(nums):
        dp = [0] * len(nums)
        dp[0] = nums[0]
        dp[1] = nums[1]
        for i in range(2, len(nums)):
            dp[i] = max(dp[i-1], dp[i-2] + nums[i])
        return dp
    
    rob1 = rob(nums[:-1])
    rob2 = rob(nums[1:]) 
print(solve())
 