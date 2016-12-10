class PrototypeUser < ActiveRecord::Base
  belongs_to :prototype
  belongs_to :user
  t.references :prototype
  t.references :user
end
