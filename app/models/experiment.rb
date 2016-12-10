class Experiment < ActiveRecord::Base
    has_many :users
    belongs_to :prototype
    
    mount_uploader :image, ImageUploader
    
    has_many :experiment_users
    has_many :users, :through => :experiment_users
  
    validates :prototype_id, presence: true
    
    
end
