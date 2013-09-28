class AddBeltIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :belt_id, :integer
  end
end
