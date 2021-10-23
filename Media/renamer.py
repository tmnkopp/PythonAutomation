import os, re
 
for d, dirs, files in os.walk(r"E:\007\Skyfall"): 
    for fi in files:  
        prev = os.path.join(d, fi)
        nam = re.sub(r'cd(\d)',r'\1',fi)
        next = os.path.join(d, nam)
        os.rename(prev, next)
        print(  os.path.join(d, nam)  )   