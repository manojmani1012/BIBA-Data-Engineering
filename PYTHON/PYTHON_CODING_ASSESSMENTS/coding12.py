#NumPy Unary Operators -max,min,sum,cumulative sum
import numpy as np
a= np.array([[1, 12, 19], [13, 38, 5], [27, 4, 60]]) 
  
print ("Largest element is:", a.max())                                       # maximum element of array 
print ("Row-wise maximum elements:", a.max(axis = 1))                        #Row-wise maximum
  
print("Small element is:",a.min())
print("Column-wise minimum elements:", a.min(axis = 1))                      # minimum element of array 
  
print("Sum of all array elements:",a.sum())                                  # sum of array elements 
  
print("Cumulative sum along each row:\n",a.cumsum(axis = 1))                 # cumulative sum along each row 


#NumPy  Binary Operators-add,mutliply,matrix

a = np.array([[1, 4],[7, 4]]) 
b = np.array([[9, 2],[6, 8]]) 
  
print(a + b)                                       # add arrays 
    
print(a*b)                                           # multiply arrays (elementwise multiplication) 
  
print(a.dot(b))       #matrix multiplication