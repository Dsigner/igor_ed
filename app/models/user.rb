class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  has_many :project_users
  has_many :projects, :through => :project_users
  
  has_many :classroom_users
  has_many :classroom, :through => :classroom_users
  
  
  has_many :badge_users
  has_many :badges, :through => :badge_users
end

