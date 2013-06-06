class AddProjectIdToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :project_id, :integer
  end
end
