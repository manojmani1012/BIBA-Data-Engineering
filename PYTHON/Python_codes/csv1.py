with open('E:\VS\Python_pra_hexa\Salary_Data.csv','r') as file:
    co=file.readlines()
header=co[:1]
row=co[1:]

print(header)
print(row)