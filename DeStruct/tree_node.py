
class TreeNode:
    def __init__(self, val, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right 
def from_list(elements):
    root_node = TreeNode(val = elements[0])
    nodes = [root_node]
    for i, val in enumerate(elements[1:]):
        if val is None:
            continue
        parent_index = i // 2
        parent_node = nodes[parent_index]
        is_left = (i % 2 == 0)
        node = TreeNode(val=val)
        if is_left:
            parent_node.left = node
        else:
            parent_node.right = node
        nodes.append(node)

    return root_node

houses = [3,2,3,None,3,None,1] 
tree = from_list( houses ) 
#  tree = from_list( [1,2,3]) 
dp = [0,0]
results = []
def traverse( node, dp, i ):
    if node == None: 
        return 
    dp.append(0)
    dp[i] = max( dp[i-1],  dp[i-2] + node.val)
    if node.left == None and node.right == None: 
        results.append(max(dp))
        return results
    if node.left:
        traverse(node.left, dp, i+1  )
        dp.pop()
    if node.right:
        traverse(node.right, dp, i+1   )
        dp.pop()
 
    return results    
print( traverse( tree, dp, 2  ) ) 
