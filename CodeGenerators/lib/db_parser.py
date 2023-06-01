import re, json 
import pandas as pd  
from lib.utils import *      
class db_parser():
    def __init__(self, ctx):  
        self.ctx = ctx 
    def parse(self, question_group=None):
        if question_group == None:
            print('Enter Question Group:')
            question_group = input()  

        question_group=str(question_group)
        if ':' in  question_group:
            min,mx=range_extractor(question_group)
            r=range(min,mx)
            question_group = ','.join([str(i) for i in r]).replace("'","")

        sql="""
            SELECT DISTINCT
            QID [{idt}] 
            , Q_TypeCode [{QT_CODE}]  
            , FK_QuestionType [{FK_QuestionType}]  
            , PK_Question as [{PK_Question}]
            , CONVERT(NVARCHAR(9), PK_PickListType) as [{PK_PickListType}]
            , sortpos [{sortpos}]
            , QTEXT as [{QuestionText}]  
            , LEFT(QTEXT, 75) AS [{QT_ABBR}]
            , PK_QuestionGroup [{PK_QuestionGroup}]
            ,   CASE WHEN required_value IS NULL THEN '' 
                ELSE
                'data-question_master="r-m-'+REPLACE(master_identifier_text,'.','_')+'" data-value_torequire="^'+required_value+'$"'
                END AS [{Dependancy}]
            FROM vwQuestionFormDependancies Q
        """+ f"  WHERE PK_QuestionGroup IN ({question_group}) ORDER BY SortPos; " 
        self.ctx.logger.info(f'{sql}')
        df=sql_todf(sql, self.ctx.connstr)  
        df['{idt}']=df['{idt}'].apply(lambda s: re.sub('_$','',s))
        df.astype({'{PK_PickListType}': 'str'}) 
        
        return df 
 