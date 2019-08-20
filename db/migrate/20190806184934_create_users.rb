class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :type
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :picture
      t.integer :educator_type
      t.integer :comm_pref
      t.boolean :admin
      t.timestamps
    end
  end
end
