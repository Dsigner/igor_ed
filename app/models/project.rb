class Project < ActiveRecord::Base
  attr_accessible :description, :image
  has_many :project_users
  has_many :users, :through => :project_users
  has_many :badges
  

end
