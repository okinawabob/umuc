# Program for mini-project 0
# by Robert Laurie ローリー　ロベート
# from Okinawa Japan 日本国　沖縄
#
# This program was modified so that it is Python 3 
# compatible on the print statement using parenthesis
# and works with Idle and Python 3.4 as well.

from Tkinter import *

root = Tk()

var = StringVar()
label = Label( root, textvariable=var, relief=RAISED )

var.set("Hey!? How are you doing?")
label.pack()
root.mainloop()
