
dojos = ["manila", "qc", "caloocan", "makati", "pasay"]

instructor = Instructor.create!(:first_name => "James", :last_name => "Dela Cruz", :email => 'instructor@shinkyokushin.com.ph', :password => 'password', :password_confirmation => 'password')
student = Member.create!(:first_name => "Juan", :last_name => "Dela Cruz", :email => "student@gmail.com", :password => "password", :password_confirmation => "password", :dojo_id => 2)
puts "Creating Users"
puts "#{instructor.email}.. #{student.email}.."

dojos.each do |dojo|
	instructor = Instructor.last
	instructor.dojos.create!(:name => "#{dojo.upcase}", :description => "#{dojo}-description", :avatar => File.open(Rails.root.join("app","assets","images","#{dojo}.jpg")))
end

puts "Creating Dojos..."

AdminUser.create!(:email => "admin@shinkyokushin.com.ph", :password => "password", :password_confirmation => "password" )
