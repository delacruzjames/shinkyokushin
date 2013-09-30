ActiveAdmin.register Member do
  actions :all, :except => [:destroy, :edit, :new]
  index do 
    column :full_name
    column :email
    default_actions
  end
end
