import os
class context():
    def __init__(self):  
        self.config={}
        self.args={}
        self.payload={}  
        self.root=os.path.dirname(os.path.realpath(__file__)).replace('\\lib','')+'\\'
    def get_dir(self): 
        return self.root
    def get_libdir(self): 
        return os.path.dirname(os.path.realpath(__file__))+'\\'      
    def get_template(self): 
        return self.config['template'].replace('~', self.root)  
    def get_dest(self): 
        return self.config['dest'].replace('~', self.root)          
       