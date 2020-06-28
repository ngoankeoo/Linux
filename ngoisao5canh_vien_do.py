#!/usr/bin/python
from turtle import *
color('red', 'red')
begin_fill()
while True:
    forward(200)
    left(144)  
    if abs(pos()) < 1:
        break
end_fill()
done()
