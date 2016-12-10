class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.text :comment
      t.string :image
      t.references :design

      t.timestamps null: false
    end
  end
end
