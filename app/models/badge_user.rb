class BadgeUser < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :user
  belongs_to :badge
end
