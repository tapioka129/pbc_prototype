class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_uniqueness_of :account_name
  validates_presence_of :account_name
  
  has_many :prototype_users
  has_many :prototypes, :through => :prototype_users
  
  has_many :experiment_users
  has_many :experiments, :through => :experiment_users

  has_many :design_users
  has_many :designs, :through => :design_users
end
