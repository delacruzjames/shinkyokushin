class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :instructor_id, :integer
    add_column :users, :type, :string
    add_column :users, :is_instructor, :boolean, :default => false
  end
end
