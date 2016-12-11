class Prototype < ActiveRecord::Base
    has_many :parts
    has_many :users
    has_many :experiments
    has_many :designs
    belongs_to :place
    
    has_many :prototype_users
    has_many :users, :through => :prototype_users

    
end
