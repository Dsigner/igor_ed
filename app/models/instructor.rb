class Instructor < ActiveRecord::Base
  attr_accessible :avatar, :badges, :bio, :name, :profession, :projects, :xp
end
