n=int(input("Nhap so tu nhien N: "))
tong=0
chan=0
le=0
for i in range (1,n+1):
    tong+=i
    if (i%2 == 0):
        chan+=i
    else:
        le+=i
print ("Tong tu 1->N la:  ",tong,"\n Tong chan la: ",chan,"\n Tong le: ",le)
