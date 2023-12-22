m=set()
n=set()
for i in range(0,10):
    m.add(i)
print(m)
for j in range(0,5):
    n.add(j)
print(n)

diffe=m.difference(n)           #difference()
print(diffe)

diffe1=m-n                      #- operator
print(diffe1)