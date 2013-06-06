class Badge < ActiveRecord::Base
  attr_accessible :description, :image
  has_many :badge_users
  has_many :users, :through => :badge_users
  belongs_to :project
end
