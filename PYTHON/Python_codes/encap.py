'''# Python program to demonstrate private members
# Creating a Base class
class Base:
    def __init__(self):
        self.a = "HexaforHexa"
        self.c = "HexaforHexa"
# Creating a derived class
class Derived(Base):
    def __init__(self):
        # Calling constructor of
        # Base class
        Base.__init__(self)
        print("Calling private member of base class: ")
        print(self.c)
# Driver code
obj1 = Base()
print(obj1.a)
print(obj1.c)
# Uncommenting print(obj1.c) will
# raise an AttributeError
# Uncommenting obj2 = Derived() will
# also raise an AtrributeError as
# private member of base class
# is called inside derived class'''
#Encapsulation-It describes the idea of wrapping data and the methods that work on data within one unit.
class a:
    def __init__(self):
        self.m="welcome to VScode"
        self.__n="Welcome to Python oops"  #   __n is a private member if __n used instead of n will get attribute error
class b(a):
    def __init__(self):
        a.__init__(self)
        print(self.__n)
obj1=a()
print(obj1.m)
print(obj1.__n)

    
        

