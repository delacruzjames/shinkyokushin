ActiveAdmin.register Member do
  actions :all, :except => [:destroy, :edit, :new]

  index do 
    column :full_name
    column :email
    default_actions
  end

  show do |member|
    attributes_table do
      row :full_name
      row :email
    end
  end
end
