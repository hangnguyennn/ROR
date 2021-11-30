def two_arrays(arrays_a, arrays_b)
    check_arrays = []
    for num in arrays_a
        if arrays_a.include?(num)
            check_arrays.push(num)
        end
      
    end
  
    check_arrays == arrays_a
  end
  
  # CASE: CAC PHAN TU CUA MANG KHONG TRUNG NHAU
  a = [10, 12, 6, 8, -1 -2 -8 -9, 18, 2]
  b = [18, 2, -1, 6, -8]
  puts "Mang b la mang con cua a? : #{two_arrays(a, b)}\n"