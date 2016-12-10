class Record < ActiveRecord::Base
    belongs_to :design
    mount_uploader :image, ImageUploader
    
end

