# printing the key-value pair of
import json
with open(r'E:\VS\Python_pra_hexa\names.json') as json_file:
    data = json.load(json_file)
    print(data['people1'][0])
    for i in data['people1']:
        print("Name:", i['name'])
        print("Role:", i['role'])
        print("City:", i['city'])
  
    for i in data['people2']:
        print("Name:", i['name'])
        print("Role:", i['role'])
        print("City:", i['city'])
   