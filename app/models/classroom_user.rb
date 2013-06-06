class ClassroomUser < ActiveRecord::Base
  attr_accessible :user_id, :classroom_id
  belongs_to :user
  belongs_to :classroom
end
