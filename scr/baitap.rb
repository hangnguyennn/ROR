arr = []

puts "Nhap Gia tri cua mang"
i = 0;
while arr.length <= 99
  puts "Nhap gia tri phan tu thu #{i+1}:"
  print "a[#{i}] = "
  
    input = gets.chomp
   
    until input == "0" || input.to_i > 0 || input == "-1"
        puts "ERROR!!!!!. Vui long nhap lai"
        print "a[#{i}] = "
        input = gets.chomp
        
    end

  
  input = input.to_i
  if input == -1 
    break    
  else
    arr.push(input)
    i += 1
  end
end

puts "Mang cua ban la = #{arr}"

Min = arr[0]
arr.each do |x|
  Min = x if x< Min 
end
puts Min