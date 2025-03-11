
rec1 = [0,0,1,1]
rec2 = [1,0,2,1]
 
def isRectangleOverlap(  rec1, rec2):
    x1, y1, x2, y2 = rec1
    x3, y3, x4, y4 = rec2

    toleft = x1 > x4
    above = x2 < x3 
    toright = y1 > y4 

    return not (toleft or above or toright or toright)

result = isRectangleOverlap(rec1, rec2)
print(result)

