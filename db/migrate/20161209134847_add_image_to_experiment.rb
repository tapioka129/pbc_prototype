class AddImageToExperiment < ActiveRecord::Migration
  def change
    add_column :experiments, :image, :string
  end
end
