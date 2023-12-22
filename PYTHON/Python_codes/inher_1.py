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
    def pri_in(self):
        print("The name of the animal is ",self.name)
        print("The color of the animal is ",self.color)
        print("The type of the animal is ",self.type1)
        
class cow(animal):
    def __init__(self, name,color,type1):
        super().__init__(name)
        self.color=color
        self.type1=type1
    def pri_in(self):
        print("The name of the animal is ",self.name)
        print("The color of the animal is ",self.color)
        print("The type of the animal is ",self.type1)
        
obj=bear("bear","black","omni")
obj1=cow("cow","white","herbi")
obj.type()
obj.pri_in()
obj1.type()
obj1.pri_in()
        