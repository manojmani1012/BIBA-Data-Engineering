#by using pandas we can write a csv files
import pandas as pd
header=['Name','salary','role']
rows=[["Manoj",45120,"developer"],["Hari",4000,"Engineer"],["Rachin",54200,"FSD"],["Penny",32520,"Tester"],]
data=pd.DataFrame(rows,columns=header)      #using dataframe
data.to_csv('Role_table.csv',index=False)   #to_csv used to convert this data into the csv files