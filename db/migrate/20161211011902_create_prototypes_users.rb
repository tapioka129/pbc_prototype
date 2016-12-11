class CreatePrototypesUsers < ActiveRecord::Migration
  def change
    create_table :prototypes_users do |t|
      t.references :prototype
      t.references :user
    end
  end
end
