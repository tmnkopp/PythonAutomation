import re, json 
schema={}
with open(r"C:\dev\CyberBalance\trunk\projects\CyberBalance.CS.Core\JSON\ref\FY25-BOD-JSON-schema-MVPVersion-v1.1.json") as f:
    schema = json.load( f )
node = schema['$defs']  #   ['fieldKey']['properties'] 
  
path=[]
result=[] 
def traverse(node): 
    
    if type(node) is str:
        if re.match('^25\.1+$', node):  
            result.append('.'.join(path))
            return
        else:
            return
    for k in node.keys():
        path.append(k) 
        traverse(node[k]) 
        path.pop() 

    return result
r=traverse(node)
print(r)