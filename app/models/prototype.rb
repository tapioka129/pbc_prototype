class Prototype < ActiveRecord::Base
    has_many :part
    has_many :user
    belongs_to :place
    
    has_many :prototype_users
    has_many :users, :through => :prototype_users
end
