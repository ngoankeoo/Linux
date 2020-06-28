import math  
a=int(input("Nhap so thu nhat: "))
b=int(input("Nhap so thu hai: "))
c=int(input("Nhap so thu ba: "))
delta = b*b-4*a*c
if delta < 0:
    print ("Phuong trinh vo nghiem")
elif (delta == 0):
    x=(-b)/(2*a)
    print ("Phuong trinh co nghiem kep x1=x2=",x)
else:
    x1 = (-b+math.sqrt(delta)) / (2*a)
    x2 = (-b-math.sqrt(delta)) / (2*a)
    print ("Phuong trinh co hai nghiem phan biet la: ")
    print ("x1 = ", x1, "; ", "x2 = ", x2)

