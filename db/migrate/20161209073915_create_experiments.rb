class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :date
      t.string :title
      t.text :purpose
      t.text :summary_result

      t.timestamps null: false
    end
  end
end
