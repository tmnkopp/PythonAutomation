
digits = "234"
keyboard = {
    "2": "abc", "3": "def", "4": "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz"
}
nums = [[c for c in keyboard[d] ] for d in digits]
r = []
def t(r, subset, index):
    if 3==index:
        r.append(''.join(subset))
        return  
    
    for i in nums[index]:
        subset.append(i)
        t(r, subset, index+1)
        subset.pop() 
 
res = t(r, [], 0)
print( res ) 
''' 
 ["adg","adh","adi","aeg","aeh","aei","afg","afh","afi"
 ,"bdg","bdh","bdi","beg","beh","bei","bfg","bfh","bfi"
 ,"cdg","cdh","cdi","ceg","ceh","cei","cfg","cfh","cfi"]
'''
