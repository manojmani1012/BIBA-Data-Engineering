import json

f = open(r'E:\VS\Python_pra_hexa\names.json')
data = json.load(f)
for i in data['people1']:
    print(i)
    
for j in data['people2']:
    print(j)
    
f.close()
