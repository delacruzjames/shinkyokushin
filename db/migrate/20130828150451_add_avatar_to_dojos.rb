class AddAvatarToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :avatar, :string
  end
end
