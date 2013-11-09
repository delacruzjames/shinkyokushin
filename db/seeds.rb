puts 'Cleaning up...'
%w{ Instructor Member Dojo AdminUser }.each do |model|
  model.constantize.delete_all
end



puts 'Creating instructor...'
james = Instructor.new(
             first_name: 'James',
              last_name: 'Dela Cruz',
                  email: 'james@shinkyokushin.com.ph',
               password: 'password')
rose = Instructor.new(
             first_name: 'Rose',
              last_name: 'Dela Cruz',
                  email: 'rose@shinkyokushin.com.ph',
               password: 'password')
juan = Instructor.new(
             first_name: 'Juan',
              last_name: 'Dela Cruz',
                  email: 'juan@shinkyokushin.com.ph',
               password: 'password')



puts 'Creating dojos...'
james_attrs = %w{ Manila QC }.reduce([]) do |attrs, name|
  attrs << {
           name: name,
    description: "#{name}-description",
         avatar: File.open(Rails.root.join('app/assets/images', "#{name}.jpg"))
  }
end

rose_attrs = %w{ Caloocan Makati }.reduce([]) do |attrs, name|
  attrs << {
           name: name,
    description: "#{name}-description",
         avatar: File.open(Rails.root.join('app/assets/images', "#{name.downcase}.jpg"))
  }
end

juan_attrs = %w{ Pasay }.reduce([]) do |attrs, name|
  attrs << {
           name: name,
    description: "#{name}-description",
         avatar: File.open(Rails.root.join('app/assets/images', "#{name}.jpg"))
  }
end

james.dojos_attributes = james_attrs
james.save!
rose.dojos_attributes = rose_attrs
rose.save!
juan.dojos_attributes = juan_attrs
juan.save!



puts 'Creating student...'
james.dojos.first.members.create(
    first_name: 'charlie',
     last_name: 'Dela Cruz',
         email: 'charlie@gmail.com',
      password: 'password')
rose.dojos.first.members.create(
    first_name: 'Carl',
     last_name: 'Dela Cruz',
         email: 'carl@gmail.com',
      password: 'password')
juan.dojos.first.members.create(
    first_name: 'Peter',
     last_name: 'Dela Cruz',
         email: 'peter@gmail.com',
      password: 'password')



puts 'Creating admin...'
AdminUser.create!(:email => "admin@shinkyokushin.com.ph", :password => "password")

puts 'All done!'
