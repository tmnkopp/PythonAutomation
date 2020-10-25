import pandas as pd 
 
data = {
'country': ['France', 'Spain', 'Italy'],
'city':['Paris', 'Madrid', 'Rome'], 
'days': [10, 12, 7]
}

row_labels = [1, 2, 3]
df = pd.DataFrame(data=data, index=row_labels)
#print(df)

for i, j in df.iterrows():
    print(i, j )
  
 