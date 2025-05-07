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


root = from_list([1,2,5,3,4,None,6])
targetSum = 22
asum = []
results = [0]  
def dfs(node, asum):
    if results[len(results)-1] < node.val: 
        results.append(node.val)
    if node.left == None and node.right == None: 
        return  
    if node.left:
        dfs(node.left, asum)
    if node.right:
        dfs(node.right, asum)
    return 

dfs(root, asum)

print(results) 


