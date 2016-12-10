class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.date :date
      t.text :comment

      t.timestamps null: false
    end
  end
end
