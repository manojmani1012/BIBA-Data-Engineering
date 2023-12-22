original_string = "python is an amazing programming language."
print("Original String:", original_string)

capitalized_string = original_string.capitalize()       # capitalize: Capitalize the first letter of the string
print("Capitalized String:", capitalized_string)

count_python = original_string.count("python")          # count: Count the occurrences of a substring
print("Count of 'python':", count_python)

uppercased_string = original_string.upper()             # upper: Convert the string to uppercase
print("Uppercased String:", uppercased_string)

lowercased_string = original_string.lower()             # lower: Convert the string to lowercase
print("Lowercased String:", lowercased_string)

replaced_string = original_string.replace("python", "Java")         # replace: Replace a substring with another substring
print("Replaced String:", replaced_string)

index_python = original_string.find("python")           # find: Find the index of a substring (case-sensitive)
print("Index of 'Python':", index_python)

words_list = ["python", "is", "amazing"]            # join: Join elements of an iterable (e.g., a list) into a string
joined_string = " ".join(words_list)
print("Joined String:", joined_string)






