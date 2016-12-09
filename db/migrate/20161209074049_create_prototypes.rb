class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.date :date
      t.string :title
      t.text :reason
      t.text :major_change

      t.timestamps null: false
    end
  end
end
