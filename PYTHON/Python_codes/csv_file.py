import csv
h=[]
r=[]
with open('E:\VS\Python_pra_hexa\Salary_Data.csv') as file:
    csv_read=csv.reader(file)
    h=next(csv_read)
    for i in csv_read:
        r.append(i)
print(h)
print(r)