#!/usr/bin/env python
from termcolor import colored

#installed in ~.bashrc -> export PATH=$PATH:/home/ehmiiz/git/python
def display_keybinds():
# function display my own keybinds
    custom_keybinds_ascii = r"""
-----------------------------------------------------------------------------------------
   ___             _                                         _      _             _      
  / __\_   _  ___ | |_  ___   _ __ ___     /\ /\ ___  _   _ | |__  (_) _ __    __| | ___ 
 / /  | | | |/ __|| __|/ _ \ | '_ ` _ \   / //_// _ \| | | || '_ \ | || '_ \  / _` |/ __|
/ /___| |_| |\__ \| |_| (_) || | | | | | / __ \|  __/| |_| || |_) || || | | || (_| |\__ \
\____/ \__,_||___/ \__|\___/ |_| |_| |_| \/  \/ \___| \__, ||_.__/ |_||_| |_| \__,_||___/
                                                      |___/     
                                    by ehmiiz
-----------------------------------------------------------------------------------------
"""

    dict_of_keybinds = {
        "ctrl+alt+enter": "Open terminal",
        "super+shift+arrow_left/arrow_right": "Move window to other monitor",
        "super+arrow_left/arrow_right": "Snap window to left, right side of the screen",
        "ctrl+shift+arrow_down": "Minimize window",
        "super+arrow_up": "Maximizes window",
        "ctrl+alt+e": "Open ChatGTP in Firefox",
        "ctrl+q": "Close window",
        "ctrl+b": "Tmux prefix",
        "super+f": "Open Firefox",
     }

    # Display key-value pairs
    print(f"{colored(custom_keybinds_ascii, "green", attrs=['bold'])}\n")
    for key, value in dict_of_keybinds.items():
        print_key = colored(f"{key}\n", "green")
        print_value = colored(f"- {value}\n", "red")
        print(print_key, print_value)


display_keybinds()
