class AddInstructorIdToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :instructor_id, :integer
  end
end
