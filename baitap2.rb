require 'byebug'

class Employee
  attr_reader :stt, :id, :name, :position
  def initialize(info = {})
    @stt = info[:stt] 
    @id = info[:id] 
    @name = info[:name]
    @year_of_birth = info[:year_of_birth]
    @position = info[:position]
    @salary_per_day = info[:salary_per_day]
    @workday = info[:workday]  

    

  end

  
  
  def show_age
    puts "tuoi #{age} tuoi"
  end

  def salary
    puts "Luong cua nhan vien : #{wage} VND"
  end
  def show_info
  puts "STT: #{@stt}"
  puts "Id: #{@id}"
  puts "Ho ten: #{@name}"
  puts "Chuc vu: #{@position}"
  puts "#{show_age}"
  puts "#{salary}"
  
  end
  def wage
    wage_roll = @salary_per_day * @workday
  end
  

  def age
    age = Time.now.year - @year_of_birth
  end

end

def input
  
end

def input
  info = Hash.new
  puts "Nhap stt nhan vien : "
  stt = gets.chomp
  loop do 
  unless !stt.include?(".") && stt.to_i > 0 || stt =="1"
    puts "ERROR!!!!!. Vui long nhap lai"
      puts "Nhap lai STT nhan vien"
      stt = gets.chomp
  else 
     break
  end
end
    stt = stt.to_i

 
  puts "nhap id nhan vien : "
    id = gets.chomp


      
      loop do 
        unless !id.include?(".") && id.to_i > 0 || id =="1"
          puts "ERROR!!!!!. Vui long nhap lai"
            puts "Nhap lai STT nhan vien"
            id = gets.chomp
        else 
          break
        end
    end
    id = id.to_i


  puts "nhap ten nhan vien : "
    name = gets.chomp
    while
      unless name.match(/\A[[:alpha:][:blank:]]+\z/)
        true
      else
        false
      end do
    
    print "ERROR!!!!!. Vui long nhap lai"
    puts "Nhap lai ten nhan vien"
    name = gets.chomp
    end
    name = name.to_s



  puts "nhap nam sinh nhan vien : "
    year_of_birth = gets.chomp
    loop do 
      unless !year_of_birth.include?(".") && year_of_birth.to_i > 0 || year_of_birth =="1"
        puts "ERROR!!!!!. Vui long nhap lai"
          puts "Nhap lai STT nhan vien"
          year_of_birth = gets.chomp
      else 
        break
      end
    end
    year_of_birth = year_of_birth.to_i


  puts "nhap vi tri cong tac cua nhan vien : "
    position = gets.chomp
    
    position = position.to_s


  puts "nhap luong 1 ngay cua nhan vien : "
    salary_per_day = gets.chomp
    loop do 
      unless !salary_per_day.include?(".") && salary_per_day.to_i > 0 || salary_per_day =="1"
        puts "ERROR!!!!!. Vui long nhap lai"
          puts "Nhap lai luong nhan vien"
          salary_per_day = gets.chomp
      else 
        break
      end
    end
    salary_per_day = salary_per_day.to_i

  puts "nhap so ngay lam cua nhan vien : "
    workday = gets
    until workday == "0" || workday.to_i >0
      prints "ERROR!!!!!. Vui long nhap lai"
      puts "Nhap lai so ngay nhan nhan vien"
      workday = gets.chomp
    end
    workday = workday.to_i

  info={
    :stt => stt.to_i,
    :id => id.to_i,
    :name => name,
    :year_of_birth => year_of_birth.to_i,
    :position => position,
    :salary_per_day => salary_per_day.to_i,
    :workday => workday.to_i
  }
  
end


employee_list = []

while true do
    
    puts "1.ADD nhan vien"
    puts "2.In thong tin nhan vien"
    puts "3. Exit"
    
   

    puts "nhap lua chon : "
    choice = gets.chomp
    case choice

   
    when "1" 
     
     
      
      em_info = input()
      new_em = Employee.new(em_info)
      employee_list << new_em

      count = 0
        if count == 0
        new_em = Employee.new(em_info)
        employee_list << new_em
        else
          puts "Trung Id"
          count = 0
        end
    when "2"
      puts "Danh sach nhan vien : "
      employee_list.each do |i| i.show_info
          
      end
    when "3" then break  
    else
      puts "ERROR!!!!!"
    end
end