#method over riding - you have to use inheritance. reimplement the methods of parent class inside child class 
# wherein the methods of child class and parent class have the 
#same name, parameters or signatures and same return type.
class animal:
    def __init__(self,name):
        self.name=name
    def pri_in(self):
        print("The name of the animal is ",self.name)
    def type(self):
        print("Some are omni and herbi")
class bear(animal):
    def __init__(self, name,color,type1):
        super().__init__(name)
        self.color=color
        self.type1=type1
    #override method
    def pri_in(self):
        super().pri_in()                              #call the methods from base class
        print("The color of the animal is ",self.color)
        print("The type of the animal is ",self.type1)
    def type(self):
        return super().type()   
class cow(animal):
    def __init__(self, name,color,type1):
        super().__init__(name)
        self.color=color
        self.type1=type1
    #override method
    def pri_in(self):
        super().pri_in()
        print("The color of the animal is ",self.color)
        print("The type of the animal is ",self.type1)
    #over ride method
    def type(self):
        return super().type()     
obj=bear("bear","black","omni")
obj1=cow("cow","white","herbi")
obj.pri_in()
obj.type()
obj1.pri_in()
obj1.type()
        