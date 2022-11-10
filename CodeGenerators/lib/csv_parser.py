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
            self.source=f'{self.ctx.get_dest()}parsed.csv'
        return pd.read_csv(self.source)
 