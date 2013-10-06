puts 'Cleaning up...'
%w{ Instructor Member Dojo AdminUser }.each do |model|
  model.constantize.delete_all
end



puts 'Creating instructor...'
james = Instructor.new(
             first_name: 'James',
              last_name: 'Dela Cruz',
                  email: 'instructor@shinkyokushin.com.ph',
               password: 'password')



puts 'Creating dojos...'
attrs = %w{ Manila QC Caloocan Makati Pasay }.reduce([]) do |attrs, name|
  attrs << {
           name: name,
    description: "#{name}-description",
         avatar: File.open(Rails.root.join('app/assets/images', "#{name.downcase}.jpg"))
  }
end
james.dojos_attributes = attrs
james.save!



puts 'Creating student...'
james.dojos.first.users.create(
    first_name: 'Juan',
     last_name: 'Dela Cruz',
         email: 'student@gmail.com',
      password: 'password')



puts 'Creating admin...'
AdminUser.create!(:email => "admin@shinkyokushin.com.ph", :password => "password")

puts 'All done!'
