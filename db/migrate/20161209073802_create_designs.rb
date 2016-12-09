class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :date
      t.text :summary

      t.timestamps null: false
    end
  end
end
