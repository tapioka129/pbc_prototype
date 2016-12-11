class CreatePrototypesUsers < ActiveRecord::Migration
  def change
    create_table :prototypes_users do |t|
      t.references :prototype, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      
      
         t.timestamps null: false
    end
  end
end
