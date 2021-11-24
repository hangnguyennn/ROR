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