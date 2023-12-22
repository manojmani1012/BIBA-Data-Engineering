#NUMpy-It is  a powerful numerical computing library
import numpy as np 
arr = np.array( [[ 9, 10, 8],[ 7, 6, 5]] ) 
print(type(arr))                  #type of arr object 
print(arr.ndim)                  # array dimensions 
print(arr.shape)                    #  shape of array 
print(arr.size)                      # total number of elements
print( arr.dtype)                # type of elements in array 


arr1=np.array([[10,12,13,14],[11,15,16,19]],dtype='float')  #as a list
print(arr1)

z=np.zeros((3,3))                            #used to create 3x3 zeros
print(z)
c=np.full((3,3),5,dtype='complex')          #to create a complex numbers with the array of 3x3 and real number is 5
print(c)

a=np.arange(0,30,3)                  #arrange-returns evenly spaced values within a given interval. Step size is specified.(0-30 step-3)
print(a)

l=np.linspace(0,20,10)             # linspace: returns evenly spaced values within a given interval.(0-20 range 10 values)
print(l)

r=np.array([[1,2,3,9],[4,3,5,2],[7,8,9,6]])             #method to reshape an array
print(r.reshape(2,2,3))

f=np.array([[1,5,9,7],[4,5,6,1]])          # to get a copy of the array collapsed into one dimension. 
print(f.flatten())