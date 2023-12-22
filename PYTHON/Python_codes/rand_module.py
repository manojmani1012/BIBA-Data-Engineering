import random as rt                    # alias name as rt

print(rt.randint(0, 5))                            # printing random integer between 0 and 5
        
print(rt.random())                                 # print random floating point number between 0 and 1
        
print(rt.random() * 100)                           # random number between 0 and 100
 
L = [1, 5, False, 800, "welcome", 27, "back","Vscode!"]
print(rt.choice(L))                 # using choice function in random module for choosing  a random element from a set such as a list