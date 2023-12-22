#2.Explain Pandas and numpy using Examples in PYTHON
#pandas It is a data manipulation and analysis library. by using pandas we can access csv files read and write 

import pandas as pd       #importing pandas
data=pd.read_csv('E:\VS\Python_pra_hexa\Salary_Data.csv')     #reading the csv file by using read_csv
print(data)
print(data.columns)
print(data.Salary)