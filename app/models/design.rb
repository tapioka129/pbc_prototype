class Design < ActiveRecord::Base
    has_many :parts
    has_many :users
    
    has_many :records
    accepts_nested_attributes_for :records, allow_destroy: true
    
    belongs_to :prototype
    belongs_to :place

end
