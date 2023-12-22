
for i  in range(5):
    print(i)

#list iteration
m=["hi","hello","hey"] 
for i in m:
    print(i)   
#tuple iteration
j=("manoj","jonam","sheldon")
for i in j:
    print(i)
#string iteration
k="VSCODE"
for i in k:
    print(i)
#dict iteration
d=dict()
d['abc']=456
d['fgh']=789
for i in d:
    print("%s %d" %(i,d[i]))
#set iteration
set1 = {1, 2, 3, 4, 5, 6} 
for o in set1: 
    print(o)
    
 
#index 
lists=["apple","mango","kiwi"]
for i in range(len(lists)):
    print(i,lists[i])
    

l=["car","bike","truck"]
for i in range(len(l)):
    print(f"Index {i} :{l[i]}")
    

lists1=["apple","mango","kiwi"]
for i in range(len(lists1)):
    print(i,lists1[i])
else:
    print("out of stock")

#nested loop
for i in range(0,5):
    for j in range(0,5):
        print(i,j,end=' ')
    print(i,j)
    
for i in range(1,5):
    for j in range(i):
        print(i,end=' ')
    print()

#continue
for i in range(1, 12): 
    if i == 6: 
        continue
    else: 
        print(i, end = " ")
  
for n in range(1,100+1): 
 count = 0 
 for i in range(1,n+1): 
    if n%i == 0: 
     count += 1 
    if count == 2: 
     print(n) 

for i in range(5):
    if i == 2:
        pass  
    else:
        print(f"Processing element {i}")
