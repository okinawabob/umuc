# Program for mini-project 0
# by Robert Laurie ローリー　ロベート
# from Okinawa Japan 日本国　沖縄
#
# This program was modified so that it is Python 3 
# compatible on the print statement using parenthesis
# and works with Idle and Python 3.4 as well.

#!/usr/bin/env python 
from tkinter import *
from tkinter import ttk
root = Tk()

frame = Frame(root)

lblText = StringVar()

label = Label(frame, textvariable=lblText)
button = Button(frame, text="Click Me")

lblText.set("I am a Label")

label.pack()
button.pack()
frame.pack()

root.mainloop()
