import json
 
jsonStr = '{ "id": 45, "name": "Rohit", "course": "FULL STACK"}'
 
stu_det = json.loads(jsonStr)                                    # Convert JSON String to Python
print(stu_det)
print(stu_det['name'])                                              # using keys
print(stu_det['course'])