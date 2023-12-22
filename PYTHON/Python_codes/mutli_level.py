#Multilevel inheritance- it a new derived class inherits the properties of the base class.
# Actually a class is permitted to inherit from a base class or child class or derived class.
# So, the classes are inherited at multiple individual levels.
class a:                                                            
    def value_a(self):
        print("Class a is executed")
        print("A is a first letter")
    
class b(a):                                                         #a is a base class - b is a child class
    def value_b(self):
        print("Class b is executed")
        print("B is a second letter")
        
class c(b):                                                          #b is a base class- c is a child class
    def value_c(self):
        print("Class c is executed")
        print("C is a Third letter")
        
m=c()
m.value_a()
m.value_b()
m.value_c()


class m:
    def valuem(self):
        print("gailsh")
class n(m):
    def valuen(self):
        print("sgfvasyul")
class o(n):
    def valueo(self):
        print("auigfayi")
j=o()
j.valuem()
j.valuen()
j.valueo()