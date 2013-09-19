instructors = ["richard", "james", "alex", "marjon", "janedee", "ram"]
students = ["anne", "martin", "david", "solomon", "bea", "blessie", "marie"]
instructors.each do |name|
	Instructor.create!(:email => "#{name}@shinkyokushin.com.ph", :password => "password", :password_confirmation => "password", :first_name => "Sensie #{name.capitalize}", :last_name => "MyLastName", :avatar_profile => File.open(Rails.root.join("app","assets","images","#{name}.jpg")))
end

puts "Creating instructors"

instructors.each do |name|
	sir = Instructor.find_by_email("#{name}@shinkyokushin.com.ph")
	sir.dojos.create!(:name => "#{name.capitalize} Dojo", :description => "#{name} Dojo description", :avatar => File.open(Rails.root.join("app","assets","images","#{name}_dojo.jpg")))
end

puts "Creating Dojos"

students.each do |student|
	Member.create!(:email => "#{student}@shinkyokushin.com.ph", :password => "password", :password_confirmation => "password", :dojo_id => rand(1..4), :first_name => "Sempai #{student.capitalize}", :last_name => "MyLastName", :avatar_profile => File.open(Rails.root.join("app","assets","images","#{student}.jpg")))
end

puts "Creating Students.."