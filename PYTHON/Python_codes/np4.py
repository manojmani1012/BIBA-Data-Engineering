#NumPy Basic Operations
import numpy as np
n=np.array([[4,5,3,2],[1,7,8,6]])
print(n+1)              #adding 1 to every elementin array

print(n-5)               #sub 5 to every element in array

print(n*2)               #multiply 2 with every element in array

print(n**2)              #squaring the every element in array

n*=2                      #double the each element
print(n)     

print(n.T)         #transpose of array