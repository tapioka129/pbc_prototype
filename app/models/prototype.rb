class Prototype < ActiveRecord::Base
    has_many :part
    has_many :user
    belongs_to :place
    
    
end
