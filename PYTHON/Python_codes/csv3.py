import csv
from fileinput import filename
header=['Name','job_role','id','salary']
rows=[['Karan','developer',45,45000],['Hari','webdeveloper',40,49000],['penny','trainer',55,35000],['leonard','engineer',25,40000]]
filename='emp_datas.csv'
with open(filename,'w',newline="") as file:
    writecsv=csv.writer(file)
    writecsv.writerow(header)
    writecsv.writerows(rows)