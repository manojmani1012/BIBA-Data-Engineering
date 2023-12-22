'''
#default arguments:
def hey(name,age=40):
    print(f"Hey {name} your age is {age}")
    
hey("karan")
hey("sachin",25)

#keyword arguments:
def hello(x,y):
    if x%2==0 or y%2==0:
        print("either one of them is even")
    else:
        print("either one of them is odd")
    
hello(x=2,y=9)
hello(y=132,x=5)

'''
#positional arguments:
def world(city,lang):
    print(f"If the city is {city} and the lang is {lang}")
world("newyork","eng")
world("eng","newyork")

#arbitrary keyword arguments:
#*args
def key(*args):
    for arg in args:
        print(arg) 
key("welcome","to","vscode")
#*kwargs
def Fun(**kwargs):
    for key, value in kwargs.items():
        print("%s -- %s" % (key, value))
Fun(f="hi",m="hey",l="bye")

    