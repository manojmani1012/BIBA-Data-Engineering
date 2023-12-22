#Hierarchical inheritance Both child class1 and child class2 are derived from Parent class
class electric_vehicle:
    def function(self):
        print("By using electric vehicle")
        print("Lots of uses in bike and car")
        
class bike(electric_vehicle):
    def bike_func(self):
        print("By using electric bike vehicle")
        print("we have Zero Emissions,Energy Efficiency")
user=bike()
user.function()
user.bike_func()
        
class car(electric_vehicle):
    def car_func(self):
        print("By using  electric car vehicle")
        print("We have Lower Operating Costs,Advanced Technology")
        
user1=car()
user1.function()
user1.car_func()
