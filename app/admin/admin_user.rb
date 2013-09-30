ActiveAdmin.register AdminUser do     
  actions :all, :except => [:destroy, :edit]
  index do                            
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count           
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Administrator Information" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.actions                         
  end                                 

  show do |admin_user|
    attributes_table do
      row :email
      row :sign_in_count
    end
  end
end                                   
