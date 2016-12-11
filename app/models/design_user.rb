class DesignUser < ActiveRecord::Base
  belongs_to :design
  belongs_to :user
end
