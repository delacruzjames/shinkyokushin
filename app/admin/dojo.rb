ActiveAdmin.register Dojo do

	filter :instructor
	
	index do
		column :avatar do |dojo_image|
			image_tag(dojo_image.avatar, :height => 100)
		end
    column :name
    column :description
    default_actions
  end
end
