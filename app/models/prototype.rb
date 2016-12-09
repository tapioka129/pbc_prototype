class Prototype < ActiveRecord::Base
    has_many :part
    has_many :user
    belong_to :place
    
    
end
