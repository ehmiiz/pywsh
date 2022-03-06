import tkinter
from tkinter import *
win=Tk() #creating the main window and storing the window object in 'win'
win.title('Welcome') #setting title of the window
cb_var1 = IntVar() 
cb1=Checkbutton(win, text='Python', variable=cb_var1,onvalue=1,offvalue=0,height=5,width=20).grid(row=0, sticky=W) 
cb_var2 = IntVar() 
cb2=Checkbutton(win, text='C++', variable=cb_var2,onvalue=1,offvalue=0,height=5,width=20).grid(row=1, sticky=W) 
cb_var3 = IntVar() 
cb3=Checkbutton(win, text='Java', variable=cb_var3,onvalue=1,offvalue=0,height=5,width=20).grid(row=2, sticky=W) 
win.mainloop() #running the loop that works as a trigger