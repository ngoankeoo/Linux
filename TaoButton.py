from tkinter import *
import tkinter.messagebox
x=tkinter.Tk()
def Ham():
    tkinter.messagebox.showinfo("HelloWorld", "HelloWorld")
B=tkinter.Button(x,text="Hello",command=Ham)
B.pack()
x.mainloop()
