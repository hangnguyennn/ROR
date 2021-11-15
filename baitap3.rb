
require 'csv'
require 'pg'
start_access= Time.now
 
  CSV.open("db.csv", "w") do |csv|
    for i in 1..500000
      email = "myhangzenda#{i}@gmail.com"
      csv << ['Nguyen Thi My Hang',email,19001008,'Ho Chi Minh city','18/02/1999','Profile description']
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
    con.exec("INSERT INTO INFO_USER(name,email,phone,address,birth,profile) 
              VALUES('#{row[0]}','#{row[1]}','#{row[2]}','#{row[3]}','#{row[4]}','#{row[5]}')")
  end
end_import_file = Time.now


puts "access file: #{stop_access - start_access}s"
puts "Reading file: #{end_read_file - begin_read_file}s"
puts "Importing file: #{end_import_file - begin_import_file}s"
puts "Reading & Importing file: #{end_import_file - begin_read_file}"
