class AddPrototypeIdToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :prototype_id, :integer
  end
end
