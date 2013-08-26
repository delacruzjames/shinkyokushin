class AddDojoIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dojo_id, :integer
  end
end
