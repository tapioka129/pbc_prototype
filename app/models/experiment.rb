class Experiment < ActiveRecord::Base
    has_many :user
    belong_to :prototype
    
    
end
