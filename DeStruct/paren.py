def gen(left,right,tups,n,res):
    if left == right and (left + right) == 2*n:
        res.append(tups)
        return
    if left < n:
        tups.append((left+1, right))
        gen(left+1,right,tups,n,res)

    if right < left:
        tups.append((left,right+1))
        gen(left,right+1,tups,n,res)

res = []
tups=[]
t=()
gen(0,0,tups,2,res)
print(res)
