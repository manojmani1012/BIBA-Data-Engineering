#NumPy Sorting Arrays
import numpy as np 
  
a = np.array([[3, 1, 2],[9, 3, 5],[6, 4, -5]]) 
  
print ("sorted order:\n", np.sort(a, axis = None))        # sorted array 
  
print ("Row-wise sorted: \n", np.sort(a, axis = 1))        # sort array row-wise 
  
print ("Column wise merge-sort:\n", np.sort(a, axis = 0, kind = 'mergesort'))          # specify sort algorithm 

dtypes = [('name', 'S10'), ('year', int), ('cgpa', float)]             #sorting of structured array 
 
values = [('Manoj', 2023, 8.73), ('Sheldon', 2023, 8.7),  
           ('Hari', 2022, 7.9), ('Sridhar', 2022, 9.5)] 
             
ar = np.array(values, dtype = dtypes)                                  # Creating array 
print ("sorted by names:\n",np.sort(ar, order = 'name'))       #sorting order of  name
              
print ("sorted by graduation year and cgpa:\n", np.sort(ar, order = ['year', 'cgpa']))   #sorting by cgpa and year
