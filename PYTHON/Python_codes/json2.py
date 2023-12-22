import json
with open(r'E:\VS\Python_pra_hexa\names.json') as file:
    data=json.load(file)
print(data)
print(type(data))
print(data['people1'])
print(data['people2'])