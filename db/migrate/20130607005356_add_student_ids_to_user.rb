class AddStudentIdsToUser < ActiveRecord::Migration
  def change
    add_column :users, :student_ids, :text
  end
end
