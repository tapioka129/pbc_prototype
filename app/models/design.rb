class Design < ActiveRecord::Base
    has_many :part
    has_many :user
    belong_to :prototype
    belong_to :place

end
