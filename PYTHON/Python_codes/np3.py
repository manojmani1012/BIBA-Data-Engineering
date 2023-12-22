#NumPy Array Indexing
import numpy as np
arr=np.array([[1,0,8,45],[7,9,2,11],[85,65,4,3],[12,16,18,63]])
print(arr)

s=arr[:3,::2]                           # Slicing array :2-first two rows,::2 alternate 2 col
print(s)

i= arr[[1,2,3], [2, 0,3]]     # Integer array indexing example (0-r,1-c)
print(i)

cond = arr > 1                      # boolean array indexing example  cond is a boolean array 
b = arr[cond] 
print (b) 