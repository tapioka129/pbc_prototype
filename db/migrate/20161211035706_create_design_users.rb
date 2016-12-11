class CreateDesignUsers < ActiveRecord::Migration
  def change
    create_table :design_users do |t|
      t.references :design, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
