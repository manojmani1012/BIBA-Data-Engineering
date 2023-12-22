'''class Dog:
    # class attribute
    attr1 = "mammal"
    # Instance attribute
    def __init__(self, name):
        self.name = name
# Driver code
# Object instantiation
Rodger = Dog("Rodger")
Tommy = Dog("Tommy")
# Accessing class attributes
print("Rodger is a {}".format(Rodger.__class__.attr1))
print("Tommy is also a {}".format(Tommy.__class__.attr1))
# Accessing instance attributes
print("My name is {}".format(Rodger.name))
print("My name is {}".format(Tommy.name))'''

from os import name


class dog:
    name="animal" #ATTRIBUTE
    
    def __init__(self,nam):#instance attribute
        self.nam=nam
        
kicha=dog("kicha") #object instantiation
mani=dog("mani")

print("kicha is a  {}".format(kicha.__class__.name))#attribute access
print("My name is {} ".format(mani.nam))#instace access

class manoj:
    name1="manoj"
    def __init__(self,name1):
        self.name1=name1
        print("my name is ",name1)
man=manoj("jonam")