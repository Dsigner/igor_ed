class CreateMgoals < ActiveRecord::Migration
  def change
    create_table :mgoals do |t|
      t.text :description
      t.decimal :xp_value

      t.timestamps
    end
  end
end
