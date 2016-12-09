class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.text :comment
      t.string :image

      t.timestamps null: false
    end
  end
end
