import os, logging, json  
class context():
    def __init__(self):  
        self.config={}
        self.args={}
        self.payload={} 
        logging.basicConfig(filename='pom.log', level=logging.DEBUG, format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p') 
        self.logger=logging.getLogger('pom')   
        self.logger.info('init')
        self.root=os.path.dirname(os.path.realpath(__file__)).replace('\\lib','')+'\\' 
    def get_dir(self): 
        return self.root
    def get_libdir(self): 
        return os.path.dirname(os.path.realpath(__file__))+'\\'   
    def get_tempalte_dir(self): 
        return self.config['template_dir'].replace('~', self.root)   
    def get_down_dir(self): 
        return self.config['downloads_dir']
    def get_cache_dir(self): 
        return self.config['cache_dir'].replace('~', self.root) 
    def get_template(self): 
        return self.config['template'].replace('~', self.root)  
    def get_dest(self): 
        return self.config['dest'].replace('~', self.root)       
    def connstr(self): 
        return self.config['connstr']   
    def getCBPass(self):
        appsettings=''
        with open('c:\\bom\\appsettings.json', 'r' , encoding='utf-8-sig') as f: 
            appsettings=json.loads(f.read())   
        return appsettings['contexts'][6]['conntask']['TaskSteps'][2]['Args'][1]      
    
    def get_download_path(self): 
        if os.name == 'nt':
            import winreg
            sub_key = r'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders'
            downloads_guid = '{374DE290-123F-4565-9164-39C4925E467B}'
            with winreg.OpenKey(winreg.HKEY_CURRENT_USER, sub_key) as key:
                location = winreg.QueryValueEx(key, downloads_guid)[0]
            return location
        else:
            return os.path.join(os.path.expanduser('~'), 'downloads')
       