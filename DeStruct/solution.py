import copy
cnt = 1
matrix = [[f'{j},{i}' for i in range(3)] for j in range(3) ]
for r in range(len(matrix)):
    for c in range(len(matrix[r])):
        matrix[r][c]=cnt
        cnt+=1
print(matrix) 
result = copy.deepcopy(matrix[::-1])

r = zip(matrix[0], matrix[1], matrix[2])
r = [list(l) for l in list(r)]
print(r)

for c in range(len(matrix)):
    for r in range(len(matrix[c]) -1, -1, -1):  
        result[c][2-r]=matrix[r][c]



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



