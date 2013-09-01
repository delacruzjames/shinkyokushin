class AddColumnInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :string
    add_column :users, :gender, :boolean
    add_column :users, :contact_number, :string
    add_column :users, :add_line_1, :string
    add_column :users, :add_line_2, :string
    add_column :users, :add_line_3, :string
    add_column :users, :address_full, :string
    add_column :users, :contact_person_fullname, :string
    add_column :users, :contact_person_number, :string
    add_column :users, :contact_person_email, :string
    add_column :users, :contact_person_address, :string
  end
end
