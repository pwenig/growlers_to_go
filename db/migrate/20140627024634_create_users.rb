class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.string :password_digest
      t.boolean :admin, :default => false
      t.timestamps
    end
  end
end
