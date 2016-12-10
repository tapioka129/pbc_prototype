class AddPrototypeIdToDesign < ActiveRecord::Migration
  def change
    add_column :designs, :prototype_id, :integer
  end
end
