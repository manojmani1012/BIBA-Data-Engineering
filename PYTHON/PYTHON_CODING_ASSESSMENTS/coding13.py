#NumPy Sorting Arrays
import numpy as np 
  
a = np.array([[3, 1, 2],[9, 3, 5],[6, 4, -5]]) 
  
print ("sorted order:\n", np.sort(a, axis = None))        # sorted array 
  
print ("Row-wise sorted: \n", np.sort(a, axis = 1))        # sort array row-wise 
  
print ("Column wise merge-sort:\n", np.sort(a, axis = 0, kind = 'mergesort'))          # specify sort algorithm 

#creating new datas
dtypes = [('name', 'S10'), ('salary', int), ('percentage', float)]             #sorting of structured array 
 
values = [('Manoj', 42230, 87), ('Sheldon', 45000, 87),  
           ('Hari', 45220, 79), ('Sridhar', 75000, 95)] 
             
ar = np.array(values, dtype = dtypes)                                  # Creating array 
print ("sorted by names:\n",np.sort(ar, order = 'name'))       #sorting order of  name
              
print ("sorted by graduation year and cgpa:\n", np.sort(ar, order = ['salary', 'percentage']))   #sorting bysalary and percentage
