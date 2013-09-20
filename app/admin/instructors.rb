ActiveAdmin.register Instructor do
	
	index do
		column :full_name
		column :email
		default_actions
	end  
end
