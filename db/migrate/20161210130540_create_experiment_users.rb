class CreateExperimentUsers < ActiveRecord::Migration
  def change
    create_table :experiment_users do |t|
      t.references :experiment, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
