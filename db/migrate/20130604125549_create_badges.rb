class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
