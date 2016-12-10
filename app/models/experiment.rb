class Experiment < ActiveRecord::Base
    has_many :user
    belongs_to :prototype
    
    mount_uploader :image, ImageUploader
    
    validates :prototype_id, presence: true
    
end
