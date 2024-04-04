from random import choice

def generate_password(length:int):
    """
    A password generator implementation
    """
    password = []
    # Create a password character set
    password_char_list = list(map(chr, range(97, 127)))
    numbers_list = [i for i in range(10)]
    final_char_list = password_char_list + numbers_list

    
    for i in range(length):
        toprint = choice(final_char_list)
        if i % 2:
            if type(toprint) == str:
                password.append(toprint.upper())
                continue
        password.append(toprint)
    
    # Verifies that length is what its supposed to be
    if len(password) == length:
        # List comprehension that joins all items from password on '' (nothing, can also be delimiter)
        # str() function convers each item to a string
        final_password = ''.join(str(item) for item in password)
        print(final_password)
    else:
        print("Wrong length!")

generate_password(15)