class AddAvatarProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar_profile, :string
  end
end
