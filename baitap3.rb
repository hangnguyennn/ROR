
require 'csv'
require 'pg'
start_access = Time.now
 profile= "Like TV 100\", Some special charactor: \\ / ' $ ~ & @ # ( ; \""
  CSV.open("db.csv", "w") do |csv|
    for i in 1..500000
      email = "myhangzenda#{i}@gmail.com"
      csv << ['Nguyen Thi My Hang',email,19001008,'Ho Chi Minh city','18/02/1999',profile]
  end
  end
stop_access = Time.now
begin_read_file = Time.now
  db = CSV.read("db.csv")
  db.each { |record| p record }
end_read_file = Time.now



begin_import_file = Time.now
  con = PG.connect(dbname: 'ex', user:'hang')
  for row in db
   index = row[5].gsub("'","''")
   
    con.exec("INSERT INTO INFO_USER(name,email,phone,address,birth,profile) 
              VALUES('#{row[0]}','#{row[1]}','#{row[2]}','#{row[3]}','#{row[4]}','#{index}')")
  end
end_import_file = Time.now


puts "access file: #{stop_access - start_access}s"
puts "Reading file: #{end_read_file - begin_read_file}s"
puts "Importing file: #{end_import_file - begin_import_file}s"
puts "Reading & Importing file: #{end_import_file - begin_read_file}"

# Phần code e trình bày ok
# db.exec, phần này a thấy e đang insert từng dòng vào trong db, tức là với 500k lines thì mình insert 500k lần về performance có thể bị ảnh hưởng
# do e hit vào db nhiều quá
# A suggest e là
#   1. sử dụng transaction -> e có thể tìm hiểu nó là gì
#   2. build ra 1 câu sql, nhưng khi nào đủ khoảng 5k lines (do e quyết định), rồi hẵn insert vào db. Như vậy sẽ giảm số lần e tương tác db ah
#

# Em trình bày trong 1 file vẫn ok, nhưng khi vào thực tế: e nên tách file ra để dễ quản lý. Vd: file về kết nối db, file để ghi ra file csv,
# file để import từ csv vào db -> mục đích là e sẽ dễ dàng quản lý và xử lý khi sau này có issues. Vd: không connect được db, thì e chỉ cần vào
# file quản lý cấu hình thôi, chứ kg cần scan hết trong 1 file tổng lớn

# Em đang sử dụng csv.read để đọc toàn bộ nội dung lên trên RAM rồi mình xử lý, với những data nhỏ thì kg sao, nhưng bới lượng data lớn thì đây
# là vấn đề, hệ thống có thể không đủ RAM để đọc. Nên a suggest e sử dụng foreach. Em có thể tham khảo 
# https://dalibornasevic.com/posts/68-processing-large-csv-files-with-ruby
