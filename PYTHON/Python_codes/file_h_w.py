file = open('E:\VS\Python_pra_hexa\jo.txt', 'w')
file.write("BYEE")
file.close()

f = open('E:\VS\Python_pra_hexa\jo.txt', 'r')
print(f.read())

file1 = open('E:\VS\Python_pra_hexa\jo.txt', 'w')
file1.write("BYEE")
file1.write("Program ended")
file1.close()

f1 = open('E:\VS\Python_pra_hexa\jo.txt', 'r')
print(f1.read())

#with()
with open('E:\VS\Python_pra_hexa\jo.txt', 'w') as file3:
    file3.write("Hey")
f2 = open('E:\VS\Python_pra_hexa\jo.txt', 'r')
print(f2.read()) 

#append-a
file=open('E:\VS\Python_pra_hexa\jo.txt', 'a')
file.write("Hello")
file.close()
f3= open('E:\VS\Python_pra_hexa\jo.txt', 'r')
print(f3.read()) 
