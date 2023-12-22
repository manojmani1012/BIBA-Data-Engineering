a=set()
b=set()
for i in range(0,5):
    a.add(i)
print(a)
for i in range(0,10):
    b.add(i)
print(b)

total=a.intersection(b)             #INTERSECTION()
print(total)

total1=a&b                          #& operator
print(total1)