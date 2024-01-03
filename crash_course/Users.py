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
        self.login_attempts = 0
    
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
    
    def increment_login_attempts(self):
        self.login_attempts = self.login_attempts + 1

    def reset_login_attempts(self):
        self.login_attempts = 0

class Privileges:
    def __init__(self):
        self.privileges = ["Add post", "Delete post", "Ban user"]
    
    
    def show_privileges(self):
        print(self.privileges)
    
    def add_privileges(self):
        if "Delete post" in self.privileges:
            # If user can delete, he should be able to read
            self.privileges.append("Read post")
            

class Admin(Users):
    def __init__(self, first_name, last_name, home_dir, phone_number, manager):
        super().__init__(first_name, last_name, home_dir, phone_number, manager)
        self.privileges = Privileges()
        self.manager = "Self"
# First user
my_admin = Admin('Emil', 'Larsson', 'home/ehmiiz', '070707070', None)

my_admin.describe_user()
my_admin.privileges.show_privileges()

my_admin.privileges.add_privileges()

my_admin.privileges.show_privileges()