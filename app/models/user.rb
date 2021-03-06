class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  has_many :projects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,:name, :password, :password_confirmation, :remember_me,

    :time_zone,:start_page , :Initials , :username
  #attr_accessible :name, :email , :e_password


  has_many :tasks
  has_many :projects
  
  validates :name, :presence => true
  
end
