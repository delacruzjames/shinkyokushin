
dojos = ["manila", "qc", "caloocan", "makati", "pasay"]

instructor = Instructor.create!(:email => 'instructor@shinkyokushin.com.ph', :password => 'password', :password_confirmation => 'password')
puts "Creating Instructor... "
puts "#{instructor.email}.."

dojos.each do |dojo|
	instructor = Instructor.last
	instructor.dojos.create!(:name => "#{dojo.upcase}", :description => "#{dojo}-description", :avatar => File.open(Rails.root.join("app","assets","images","#{dojo}.jpg")))
end

puts "Creating Dojos..."


