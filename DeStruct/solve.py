 
nums = [-1,0,1,2,-1,-4]
nums = sorted(nums)
result = []
sub = []
def recur(sub, index, tnums): 
    if len(sub) == 3:
        if sum(sub) == 0:
            new_list = sorted([i for i in sub])
            if new_list not in result:
                result.append(new_list)
        return
    for i in tnums[:]:
        sub.append(i)
        tnums = tnums[1:]
        recur(sub, index+1, tnums)
        sub.pop()
    return result
recur([], 0, nums)
print(result)





