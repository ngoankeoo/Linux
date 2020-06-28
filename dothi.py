import matplotlib.pyplot as pyplot
#Tạo dữ liệu
labels = ('Python', 'C/C++', 'C#', 'Java', 'PHP')
index = (1, 2, 3, 4, 5) # Đường dẫn tọa độ x 
sizes = [45, 10, 15, 30, 22]
# Tạo biểu đồ
pyplot.bar(index, sizes, tick_label=labels)
# Thiết lập giao diện
pyplot.ylabel('Sử dụng')
pyplot.xlabel('Lập trình ngôn ngữ')
# Hiển thị dạng đồ thị
pyplot.show()
