#!/usr/bin/python
from turtle import *
color('green','green')
begin_fill()
while True:
    forward(200)
    left(150)  
    if abs(pos()) < 1:
        break
end_fill()
done()

