target_sum = 10
arrays = [12, -2 , 8, 9, 7, 4, 5,3, 2, 1, 6]
result = []
check_arrays = arrays.combination(3).to_a
for item in check_arrays
  reducer = item.reduce { |sum, arrays| sum + arrays }
   if reducer == target_sum
    result.push(item)
   end
end
p result 