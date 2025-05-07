 
subset = [] 
pos = 0
n = 20
for i in range(0, n): 
    dow = (i % 7) + 1
    pos =  int(i / 7) + dow
    subset.append(pos) 

print(sum(subset))

