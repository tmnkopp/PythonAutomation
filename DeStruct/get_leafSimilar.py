
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

 
tree = from_list([1,2,3]) 
tree1 = from_list([1,2,3,4,None,6,7])
tree2 = from_list([1,2,3,4,None,6,7])
 
leafs = []
def get_leafs(node, leafs):
    if node.left is None and node.right is None:
        leafs.append(node.val)
        return node.val
    if node.left is not None:
        get_leafs(node.left, leafs)
    if node.right is not None:
        get_leafs(node.right, leafs)
    return leafs

def get_leafSimilar(tree1, tree2):
    leafs1 = get_leafs(tree1, [])
    leafs2 = get_leafs(tree2, [])
    return leafs1 == leafs2

leafSimilar= get_leafSimilar(tree1, tree2)
print(leafSimilar)




vals = []
def goodNodes(node, vals):   
    #print(node.val)
    vals.append(node.val)
    if node.left != None:
        goodNodes(node.left, vals)
    if node.right != None:
        goodNodes(node.right, vals)
    if node.left == None and node.right == None: 
        print(vals)
        vals=[]
     


 
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

 
def solution(node, targetSum, sum, cnt):
    if node is None:
        return 0
    if node.val < targetSum:
        sum += node.val
    if sum == targetSum:
        cnt += 1
        sum=0 
    solution(node.left, targetSum, sum, cnt)
    solution(node.right, targetSum, sum, cnt)
 
tree = from_list([10,5,-3,3,2,None,11,3,-2,None,1])  
result = solution(tree, 8,sum ,cnt)
result




 