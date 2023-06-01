import re, sys, json, pickle, os
from sqlalchemy import func, create_engine
import pandas as pd
import numpy as np
from os.path import exists
import nltk
from sklearn import metrics
from sklearn.metrics import confusion_matrix
from sklearn.model_selection import train_test_split 
from sklearn.preprocessing import StandardScaler 
from sklearn.linear_model import LogisticRegression 
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics import classification_report

class question_type_recommender():
    def __init__(self, ctx, verbose=False, use_cache=True, codes = ['YN','CNT','TXT','PICK','FREQ','DEC','MULTICHECKBOX' ] ):  
        self.ctx=ctx
        self.connstr = ctx.config['connstr'] 
        self.recommend_result={}
        self.input=''  
        self.verbose = verbose
        self.codes=codes
        self.use_cache=use_cache 
        self.vectorizer = CountVectorizer(ngram_range=(1,2), min_df=0.003, stop_words=['in'], analyzer='word',token_pattern=u'\w+|\?')
        self.questions = pd.DataFrame()

        self.question_types = pd.DataFrame()
        if use_cache and os.path.isfile('cache/fsma_QuestionTypes.csv'):
            self.question_types=pd.read_csv('cache/fsma_QuestionTypes.csv')
        else: 
            self.question_types = self._sqltodf("SELECT * FROM fsma_QuestionTypes" )
            self.question_types.to_csv('cache/fsma_QuestionTypes.csv', index=False)

        self._load_model(use_cache=self.use_cache) 

    def _load_model(self, use_cache=True):
        if use_cache and os.path.isfile('cache/qtr_model.sav'):
            self.model = pickle.load(open('cache/qtr_model.sav', 'rb')) 
            self.vectorizer = pickle.load(open('cache/qtr_vectorizer.sav', 'rb')) 
            return
        else:
            self.model = LogisticRegression() 
            self.questions = self._sqltodf(f"""
                SELECT PK_Question, FK_QuestionType, Code, QuestionText 
                FROM fsma_Questions 
                INNER JOIN fsma_QuestionTypes ON fsma_Questions.FK_QuestionType=fsma_QuestionTypes.PK_QuestionTypeId
                WHERE FK_QuestionType IS NOT NULL AND QuestionText IS NOT NULL  
                AND Code IN ('{"','".join(self.codes)}') 
                -- AND PK_Question < 40000
                ORDER BY PK_QUESTION DESC
            """ )  
            X = self.vectorizer.fit_transform(self.questions['QuestionText'])   
            self.sparse_matrix=pd.DataFrame(columns=self.vectorizer.get_feature_names(), data=X.toarray()) 
            self.sparse_matrix=pd.merge(self.questions, self.sparse_matrix, left_index=True, right_index=True)  
            self.sparse_matrix.drop(['QuestionText', 'PK_Question', 'Code' ], inplace=True, axis=1) 
            y = self.sparse_matrix['FK_QuestionType'].values 
            X = self.sparse_matrix.drop(['FK_QuestionType' ], axis=1).values
            X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1)
            self.model.fit(X_train, y_train)  

        if self.verbose:
            y_pred=self.model.predict(X_test) 
            report = classification_report(y_test, y_pred, target_names=self.codes) 
            print(report) 

        pickle.dump(self.model, open('cache/qtr_model.sav', 'wb'))
        pickle.dump(self.vectorizer, open('cache/qtr_vectorizer.sav', 'wb'))

    def retrain(self): 
        self._load_model(use_cache=False)

    def recommend(self, input ): 
        self.input=self._normalizer(input) 
        X = self.vectorizer.transform([self.input])  
        prediction=self.model.predict(X.toarray())
        prediction=prediction[0] 
        return {'PK_QuestionType': prediction,'Code': self._get_question_code(prediction)} 

    def _get_question_code(self, FK_QuestionType): 
        self.ctx.logger.info(f'PK_QuestionType: {FK_QuestionType}')
        code = self.question_types.loc[self.question_types['PK_QuestionTypeId']==FK_QuestionType]['code']  
        return code.iat[0]
    
    def _sqltodf(self, query ):
        df=pd.DataFrame() 
        engine = create_engine(self.ctx.config['connstr'] ) 
        conn = engine.connect() 
        try: 
            df = pd.read_sql(query,con=conn) 
        finally: 
            conn.close()
        return df  

    def _normalizer(self, s):
        s=re.sub('[^a-z0-9\s\-\?]','',s.lower())
        s=re.sub('\s{2,}',' ',s).strip()
        return s  

