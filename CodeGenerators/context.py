import os
class context():
    def __init__(self):  
        self.config={}
        self.args={}
        self.payload={} 
        self.dir=os.path.dirname(os.path.realpath(__file__))
        self.root=os.path.dirname(os.path.realpath(__file__))+'\\'
    def get_dir(self): 
        return self.dir.replace('~', self.root)
    def get_template(self): 
        return self.config['template'].replace('~', self.root)  
       