
dojos = ["manila", "qc", "caloocan", "makati", "pasay"]

dojos.each do |dojo|
	instructor = Instructor.create!(:email => 'instructor@shinkyokushin.com.ph', :password => 'password', :password_confirmation => 'password')
	instructor.dojos.create!(:name => '#{dojo}.jpg', :description => '#{dojo}-description'
end


