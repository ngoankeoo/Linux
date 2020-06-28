n = int(input("Nhap N:"))
print("Danh sach tu 1 - N:")
tong = 0
tong_le = 0
tong_chan = 0
tong_chia_het_cho_3 = 0
tong_chia_het_cho_5 = 0
for i in range(1, n+1):
     print i,
     tong = tong + i
     if i % 2 == 1:
        tong_le = tong_le + i
     else:
        tong_chan = tong_chan + i
     if i % 3 == 0:
        tong_chia_het_cho_3 += i
     if i % 5 == 0:
        tong_chia_het_cho_5 += i
   
print("\nTong {0}".format(tong))
print("Tong cac so le  {0}".format(tong_le))
print("Tong cac so chan {0}".format(tong_chan))
print("Tong cac so chia het cho 3 {0}".format(tong_chia_het_cho_3))
print("Tong cac so chia het cho 5 {0}".format(tong_chia_het_cho_5))
