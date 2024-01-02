class Users:
    """
    This class creates instances of users.
    """
    def __init__(self, first_name, last_name, home_dir, phone_number, manager):
        self.first_name = first_name
        self.last_name = last_name
        self.home_dir = home_dir
        self.phone_number = phone_number
        self.manager = manager
    
    def describe_user(self):
        """
        Returns a dictionary for a given user.
        """
        return_object = {
            'First Name': self.first_name,
            'Last Name': self.last_name,
            'Home Directory': self.home_dir,
            'Phone Number': self.phone_number,
            'Manager': self.manager,
        }
        print(return_object)
    
    def greet_user(self):
        """
        Greets the user!
        """
        full_name = f"{self.first_name} {self.last_name}"
        print(f"Welcome, {full_name.title()}.")

# First user
my_user = Users('Emil', 'Larsson', 'home/ehmiiz', '070707070', 'ldesdrbrg')

# 2nd user
bosse_user = Users('Bosse', 'Karlsson', 'home/bosse', '070722070', 'emillarsson')

# Call the methods
my_user.describe_user()
my_user.greet_user()

# Again
bosse_user.describe_user()
bosse_user.greet_user()
