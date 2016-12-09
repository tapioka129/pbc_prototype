class Design < ActiveRecord::Base
    has_many :part
    has_many :user
    has_many :change
    accepts_nested_attributes_for :change
    belongs_to :prototype
    belongs_to :place

end
