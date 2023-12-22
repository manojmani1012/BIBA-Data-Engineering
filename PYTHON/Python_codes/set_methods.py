#add method
a={1,2,3,4,5,6}
print(a)
a.add(9)
print(a)

#discard method
a.discard(5)
print(a)

#remove method
a.remove(1)
print(a)

#pop method-Returns and removes a random element from the set
a.pop()
print(a)

#copy method
b=a.copy()
print(b)
#after adding
b.add(10)
print(a)
print(b)

#difference
m={1,2,3,4,5}
n=set([1,2,3,4])
d=m.difference(n)
print(d)

#symmetric_difference   - Returns a set which is the symmetric difference between the two sets
s=m.symmetric_difference(n)
print(s)

#clear method
a.clear()
print(a)