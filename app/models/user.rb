class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :prototype_users
  has_many :prototype, :through => :prototype_users
  
  has_many :experiment_users
  has_many :experiment, :through => :experiment_users

end
