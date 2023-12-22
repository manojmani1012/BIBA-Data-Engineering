def squ(num):
    return num**2

print(squ(2))
print(squ(-4))

def fact(n):
    f=1
    for i in range(1,n+1):
        f=f*i
    return f

print(fact(5))