import random as ra                                  # alias name as ra

print("printing random integer between 0 and 10",ra.randint(0, 10))                            
    
print("random floating point number between 0 and 1",ra.random())                                
    
print("Print random number between 0 and 100",ra.random() * 100)                           

L = [1, 45, False, 700, "Hey there", "Java", "back","Python"]
print(ra.choice(L))                                               # using choice function in random module for choosing  a random element from a set such as a list