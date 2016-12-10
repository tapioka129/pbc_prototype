class Experiment < ActiveRecord::Base
    has_many :user
    belongs_to :prototype
    
    mount_uploader :image, ImageUploader
    
    has_many :experiment_users
    has_many :user, :through => :experiment_users
  
    validates :prototype_id, presence: true
    validates :user_id, presence: true
    
    
end
