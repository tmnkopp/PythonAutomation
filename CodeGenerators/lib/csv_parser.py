import re, json, openpyxl 
import pandas as pd 
from openpyxl import Workbook  
from lib.utils import *
class csv_parser():
    def __init__(self, ctx):  
        self.ctx = ctx 
        self.source = self.ctx.config['source']  
    def parse(self):
        if '.csv' not in self.source:
            self.source=self.ctx.root+'\\parsed.csv'
        return pd.read_csv(self.source)
 