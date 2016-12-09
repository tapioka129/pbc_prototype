class Change < ActiveRecord::Base
    belongs_to :design
    validates :design_id, presence: true
    
end
