def value(n):
    if n>=2:
        return n+n
    else:
        return n
    
m=[2,5,6,7,1,0]
res=list(map(value,m))
print(res)

#4,10,12,14,1,0