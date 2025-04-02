

cost = [ 10, 15, 20 ]
 
cost
for i in range(len(cost), -1, -1):
    temp = cost[i]
    cost[i] = min(cost, cost)



