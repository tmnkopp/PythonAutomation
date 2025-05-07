class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None
class Creator: 
    def populate(self, in_list): 
        curr = ListNode(in_list[0])
        head = curr 
        for i in in_list[1:]:
          temp = ListNode(i)
          curr.next = temp
          curr = temp 
        return head
    
list1 = [1,2,2,2,4]
list2 = [1,3,3,3,4]
list1 = [1,2,4]
list2 = [1,3,4] 
L1 = Creator().populate(list1)
L2 = Creator().populate(list2) 
temp1, temp2 = L1, L2
mergedListHead = ListNode(0)
ret = mergedListHead
while temp1 or temp2: 
    if temp1.val < temp2.val: 
        new = ListNode(temp1.val)
        mergedListHead.next=new 
        temp1=temp1.next   
    elif temp2.val <= temp1.val: 
        new = ListNode(temp2.val)
        mergedListHead.next=new 
        temp2=temp2.next  
    mergedListHead = mergedListHead.next
print(ret)






