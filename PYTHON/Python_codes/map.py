#simple map 
def add(n):  
    return n + n
num = (1, 2, 3, 4)
result = map(add, num)
print(list(result))

m=[1,2,3,4,5,6,7,8,9]
res=map(lambda x: x+x,m)
print(list(res))