class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :converation_id
      t.integer :sender
      t.boolean :read
      t.timestamps
    end
  end
end
