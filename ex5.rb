def input_array
    print "Ban hay nhap do dai mang la so tu nhien n (n≤ 99): "
    n = Integer(gets)
    if n >= 0 && n <= 99
      return n 
    else
      raise
    end
  rescue
    print "Nhap khong hop le, vui long nhap lai! \n\n"
    retry
    end
    n = input_array
  arrays = Array.new(n) { |i| i = rand(1..9)}

    puts "mang random la : #{arrays}"
   
    array = 0
    sub_arrays = 1
    n = n - 1
for i in 0..n
    if i==n
      print "mang con tang #{sub_arrays} : #{arrays[array..i]}\n"
    else    
      if arrays[i] > arrays[i+1]
         print "mang con tang #{sub_arrays} : #{arrays[array..i]}\n"
         array = i+1
         sub_arrays = sub_arrays + 1
      end
    end
end