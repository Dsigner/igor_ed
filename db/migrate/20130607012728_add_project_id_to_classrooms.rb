class AddProjectIdToClassrooms < ActiveRecord::Migration

  def change
   add_column :classrooms, :project_id, :integer
  end
end
