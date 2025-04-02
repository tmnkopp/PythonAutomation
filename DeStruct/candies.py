def knapsack(W, val, wt):
    n = len(wt)
    dp = [[0 for _ in range(W + 1)] for _ in range(n + 1)]

    # Build table dp[][] in bottom-up manner
    for item in range(n + 1):
        for cap in range(W + 1):

            # If there is no item or the knapsack's capacity is 0
            if item == 0 or cap == 0:
                dp[item][cap] = 0
            else:
                pick = 0

                # Pick ith item if it does not exceed the capacity of knapsack
                if wt[item - 1] <= cap:
                    j = cap - wt[item - 1]
                    pick = val[item - 1] + dp[item - 1][j]

                # Don't pick the ith item
                notPick = dp[item - 1][cap]

                dp[item][cap] = max(pick, notPick)

    return dp[n][W]

if __name__ == "__main__":
    val = [1, 2, 3]
    wt = [4, 5, 1]
    W = 4
    
    print(knapsack(W, val, wt))
