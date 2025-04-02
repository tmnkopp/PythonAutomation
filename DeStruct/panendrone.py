string = 'zzztacocatpptacocatxtacocatvv' 
start, end = 0, 1
palenmax = 0
palens = []
while start < len(string):  
    palen = ''  
    end=start+2
    while end < len(string[1:]):
        fwd=string[start:end:1]
        bak=fwd[::-1]
        if fwd==bak: 
            if len(fwd) > palenmax:
                palenmax=len(fwd)
                palens.append(fwd) 
        end+=1 
    start+=1

result = max(list(map(len,palens)))
print(result)
        