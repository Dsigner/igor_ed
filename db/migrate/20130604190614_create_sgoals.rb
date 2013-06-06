class CreateSgoals < ActiveRecord::Migration
  def change
    create_table :sgoals do |t|
      t.text :description
      t.decimal :xp_value

      t.timestamps
    end
  end
end
