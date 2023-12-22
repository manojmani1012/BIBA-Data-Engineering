#file handling r -open an existing file for a read operation.
file = open('E:\VS\Python_pra_hexa\jo.txt', 'r')
for each in file:
    print (each)
#using read()
file=open('E:\VS\Python_pra_hexa\jo.txt','r')
print(file.read())

#using with()
with open ('E:\VS\Python_pra_hexa\jo.txt') as file:
    d=file.read()
print(d)
    
#certain no.of words
f=open('E:\VS\Python_pra_hexa\jo.txt','r')
print(f.read(6))

#using split()
with open('E:\VS\Python_pra_hexa\jo.txt','r') as pro:
    da=pro.readlines()
    for i in da:
        word=i.split()
        print(word)
    

