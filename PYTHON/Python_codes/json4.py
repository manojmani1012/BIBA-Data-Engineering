# Convert JSON string to dictionary
import json
str= '{"Name": "Penny", "age": 23, "Course": "DSA"}'

json_dict = json.loads(str)

print(json_dict)