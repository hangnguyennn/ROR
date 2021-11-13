arr = [] # với biến có chứa nhiều phần tử nên là số nhiều

puts "Nhap Gia tri cua mang"
i = 0; # biến i có thể xem xét đặt có ý nghĩa hơn, vd: index , trừ trường hợp trong vòng for. và cuối câu kg có dấu ; nhé
while arr.length <= 99
  puts "Nhap gia tri phan tu thu #{i+1}:"
  print "a[#{i}] = "
  
    input = gets.chomp
   
    until input == "0" || input.to_i > 0 || input == "-1" # có thể viết thành (["0", "1"].include?(input) || input.to_i > 0)
        puts "ERROR!!!!!. Vui long nhap lai"
        print "a[#{i}] = "
        input = gets.chomp
        
    end

  
  input = input.to_i
  if input == -1 # -1 e có thể khai báo là hằng số để dễ đọc hơn, vd: STOP_SIGNAL = -1
    break    
  else
    arr.push(input)
    i += 1
  end
end

puts "Mang cua ban la = #{arr}"

Min = arr[0] # biến Min không nên viết in hoa chữ M nhé e. Chương trình sẽ warning ah
arr.each do |x|
  Min = x if x< Min 
end
puts Min
# Chương trình của e viết gọn gàng, dễ hiểu. E cần chú ý hơn về nội dung ghi trong commit code nhé.
# Tuy nhiên vẫn có bug nếu user input kg đúng, và có warning
# Vd: 
# Nhap Gia tri cua mang
# Nhap gia tri phan tu thu 1:
# a[0] = 5 abcabc
# Nhap gia tri phan tu thu 2:
# a[1] = 3 + 1
# Nhap gia tri phan tu thu 3:
# a[2] = -1
# Mang cua ban la = [5, 3]
# main.rb:32: warning: already initialized constant Min
# main.rb:30: warning: previous definition of Min was here
# 3
