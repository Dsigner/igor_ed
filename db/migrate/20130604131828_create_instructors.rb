class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :avatar
      t.text :bio
      t.text :projects
      t.string :xp
      t.string :profession
      t.string :name
      t.string :badges

      t.timestamps
    end
  end
end
