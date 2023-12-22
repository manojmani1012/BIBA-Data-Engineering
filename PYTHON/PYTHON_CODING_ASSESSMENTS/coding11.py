#NumPy Array Indexing  Slicing array ,Integer array indexing , boolean array indexing

import numpy as np
arr=np.array([[1,0,8,45],[7,9,2,11],[85,65,4,3],[12,16,18,63]])
print(arr)

s=arr[:3,::2]                           # Slicing array :2-first two rows,::2 alternate 2 col
print(s)

i= arr[[1,2,3], [2, 0,3]]     # Integer array indexing example (0-r,1-c)
print(i)

#NumPy Basic Operations
print(arr+1)              #adding 1 to every elementin array
print(arr-5)               #sub 5 to every element in array
print(arr*2)               #multiply 2 with every element in array
print(arr**2)              #squaring the every element in array
arr*=2                      #double the each element
print(arr)     

print(arr.T)         #transpose of array






