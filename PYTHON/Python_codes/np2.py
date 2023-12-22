import numpy as np
arr=np.array([[10,12,13,14],[11,15,16,19]],dtype='float')  #as a list
print(arr)
arr1=np.array((1,8,9))   #as a tuple
print(arr1)
z=np.zeros((3,3))           #used to create 3x3 zeros
print(z)
c=np.full((2,2),9,dtype='complex')          #to create a complex numbers with the array of 2x2 and real number is 9
print(c)
a=np.arange(0,20,2)                  #arrange-returns evenly spaced values within a given interval. Step size is specified.(0-20 step-2)
print(a)
l=np.linspace(0,10,20)             # linspace: returns evenly spaced values within a given interval.(0-10 range 20 values)
print(l)
r=np.array([[1,2,3,9],[4,5,6,2],[7,8,9,6]])             #method to reshape an array
print(r.reshape(2,2,3))
f=np.array([[1,5,9,7],[4,5,6,1]])          # to get a copy of the array collapsed into one dimension. 
print(f.flatten())