class CreateClassroomUsers < ActiveRecord::Migration
  def change
    create_table :classroom_users do |t|
      t.integer :user_id
      t.integer :classroom_id
      t.timestamps
    end
  end
end
