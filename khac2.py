import matplotlib.pyplot as pyplot
# Tạo tập dữ liệu
x = [0, 1, 2, 3, 4, 5, 6]
y = [0, 2, 6, 14, 30, 43, 75]
# Tạo vùng tiêu đề
pyplot.ylabel('Speed', fontsize=12)
pyplot.xlabel('Time', fontsize=12)
# Tao tiêu đề
pyplot.title("Speed v Time")
# Hiển thị dạng đồ thị
# Sử dụng màu xanh vòng tròn đánh dấu ('bo')
# Và đường line ('-')
pyplot.plot(x, y, 'bo-')
pyplot.show()

