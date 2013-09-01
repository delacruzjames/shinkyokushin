class AddSlugToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :slug, :string
    add_index :dojos, :slug
  end
end
