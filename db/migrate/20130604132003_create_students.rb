class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :avatar
      t.text :bio
      t.text :projects
      t.string :xp
      t.string :grade
      t.string :name
      t.string :badges

      t.timestamps
    end
  end
end
