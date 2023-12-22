#Multiple Inheritance- inherit the features of more classes into a single class. 
# we have two parents classes (Father and Mother) and one child class that is derived form two parents classes.
class petrol_vehicle:
    def petrol(self):
        print("Inside the petrol vehicle")
        print("Using the petrol vehicle")  
ktm=petrol_vehicle()

class electric_vehicle:
    def electric(self):
        print("Inside the electric vehicle")
        print("Using the EV")
spark=electric_vehicle()

class users(petrol_vehicle,electric_vehicle):
    def user_choice(self):
        print("Choosing petrol vehicles")
    def user_choice_1(self):
        print("Choosing electric vehicles")      
people=users()
people.petrol()
people.electric()
people.user_choice()
people.user_choice_1()  
