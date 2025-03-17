class Solution(object):
    def gen(self,left,right,s,n,res): 
        print(s)
        if len(s) == n*2: 
            res.append(s) 
            return
        
        if left < n: 
            self.gen(left+1,right,s+"(",n,res) 

        if right < left: 
            self.gen(left,right+1,s+")",n,res)
        
    def generateParenthesis(self, n): 
        res = []
        self.gen(0,0,"",n,res)
        return res
        
sol = Solution()
sol.generateParenthesis(2)