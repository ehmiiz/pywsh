# Define the class
class Resturant:
    """An attempt to model a Resturant."""
    # Sets the standard attributes to it's instances
    def __init__(self, resturant_name, cuisine_type):
        self.resturant_name = resturant_name
        self.cuisine_type = cuisine_type

    # A method that describes the resturant
    def describe_resturant(self):
        print(f"Name: {self.resturant_name}\nCuisine: {self.cuisine_type}")

    # A method that opens the resturant
    def open_resturant(self):
        print(f'The resturant: "{self.resturant_name}" is now open!')

# An instance of the resturant class
resturant_one = Resturant('Palace', 'Pizzeria')
resturant_two = Resturant('Jureskogs', 'Hamburgare')
resturant_three = Resturant('ChopChop', 'Thai')

# Calling it's methods
resturant_one.open_resturant()
resturant_one.describe_resturant()

resturant_two.open_resturant()
resturant_two.describe_resturant()

resturant_three.open_resturant()
resturant_three.describe_resturant()
