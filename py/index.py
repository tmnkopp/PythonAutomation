print( 9 // 2) 

def get_similar(tree1, tree2):
    leafs1 = get_leafs(tree1)
    leafs2 = get_leafs(tree2)
    print(leafs1)
    print(leafs2)
    return leafs1 == leafs2

result = get_similar(tree1, tree2)
print ( result ) 
