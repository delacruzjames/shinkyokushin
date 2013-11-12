ActiveAdmin.register Instructor do
	
  filter :email
  
	index do
		column :full_name
		column :email
		default_actions
	end  

  form do |f|
    f.inputs "Instructor Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do |instructor|
    attributes_table do
      row :full_name
      row :email
    end
  end
end
