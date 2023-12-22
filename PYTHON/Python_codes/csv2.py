#csv.DictReader
import csv
m=[]
with open('E:\VS\Python_pra_hexa\Salary_Data.csv','r') as file:
    reader=csv.DictReader(file)
    h=next(reader)
    for r in reader:
        m.append(r)
print(h)
print(m)