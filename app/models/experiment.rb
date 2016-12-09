class Experiment < ActiveRecord::Base
    has_many :user
    belongs_to :prototype
    
    
end
