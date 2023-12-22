#single inheritance-you can derive a child class from a single parent class.
class animal:
    def print_(self):
        print("The animal is")
        
class lion(animal):
    def action(self):
        print("Attacking")
        
obj=lion()
obj.print_()
obj.action()