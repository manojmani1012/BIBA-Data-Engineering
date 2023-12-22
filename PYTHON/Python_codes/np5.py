#NumPy Unary Operators
import numpy as np
a= np.array([[1, 2, 19], [3, 8, 5], [7, 4, 6]]) 
  
print ("Largest element is:", a.max())                                       # maximum element of array 
print ("Row-wise maximum elements:", a.max(axis = 1))                        #Row-wise maximum
  
print("Small element is:",a.min())
print("Column-wise minimum elements:", a.min(axis = 1))                      # minimum element of array 
  
print("Sum of all array elements:",a.sum())                                  # sum of array elements 
  
print("Cumulative sum along each row:\n",a.cumsum(axis = 1))                 # cumulative sum along each row 