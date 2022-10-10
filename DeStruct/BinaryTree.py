class Node:
    def __init__(self, data): 
        self.left = None
        self.right = None
        self.data = data
    
class BinTree: 
    def __init__(self): 
        self.root = None  
    def add(self, data):
        if self.root == None:
           self.root = Node(data)
        else:
            self.addto(self.root, data) 
    def addto(self, node, data): 
        if data < node.data:
            if node.left == None:
               node.left = Node(data) 
            else:
               self.addto(node.left, data) 
        else:
            if node.right == None:
                node.right = Node(data) 
            else:
                self.addto(node.right, data)
    def printtree(self, node):
        if node.left:
            self.printtree(node.left)
        print( node.data )    
        if node.right:
            self.printtree(node.right)  
 
    def inorder(self, root):
        rslt = []
        if root:
            rslt = self.inorder(root.left)
            rslt.append(root.data)
            rslt = rslt + self.inorder(root.right)
        return rslt


def log(func, d1, d2):
    func(d1,d2)

func = lambda s, p: print(s+p) 
log(func , 'foo', 'bar')




# print(root.inorder(root)) //[10, 14, 19, 27, 31, 35, 42]