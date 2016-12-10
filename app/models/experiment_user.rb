class ExperimentUser < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :user
end
