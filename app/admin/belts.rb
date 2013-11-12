ActiveAdmin.register Belt do

  filter :description
    
  index do
    column :name
    column :description
    default_actions
  end

  show do |belt|
    attributes_table do
      row :name
      row :description
    end
  end
end
