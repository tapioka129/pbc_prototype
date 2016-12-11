class Design < ActiveRecord::Base
    has_many :parts

    has_many :records
    accepts_nested_attributes_for :records, allow_destroy: true
    
    belongs_to :prototype
    belongs_to :place
    
    has_many :design_users
    has_many :users, :through => :design_users

end
