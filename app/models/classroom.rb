class Classroom < ActiveRecord::Base
#   attr_accessible :title, :body
  has_many :classroom_users
  has_many :users, :through => :classroom_users  
end
