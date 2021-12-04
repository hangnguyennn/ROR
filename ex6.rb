target_sum = 10
arrays = [12, -2 , 8, 9, 7, 4, 5]
result = []
for index in arrays
   

  pair_of_num =(arrays - [index]).select{|item| item + index == target_sum}
    if pair_of_num[0]
        result = [index, pair_of_num[0]]
     break
  else
    next
  end
end
puts  "mang 2 so co tong bang #{target_sum} : #{result}"

# Code e viết rất gọn, dễ đọc, code e đã tốt hơn trước.
# E cần format lại commit github của mình cho đúng hơn nhé e.
# Dòng 5, 6 e kg cần xuống dòng như vậy ah
# pair_of_num =(arrays - [index]).select{|item| item + index == target_sum} -> a thấy e lấy arrays - index -> sẽ thành 1 mãng con mới
# kg chứa index rồi e dùng select (tức duyệt qua từng phần tử trong trong mảng con) để tìm giá trị => về bản chất cũng giống với việc e 
# dùng 2 dòng for nhé. 
