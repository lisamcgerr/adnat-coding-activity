class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :organization_id
      t.string :name
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
