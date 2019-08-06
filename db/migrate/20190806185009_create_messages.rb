class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :conversation_id
      t.integer :sender_id
      t.boolean :read, default: false
      t.timestamps
    end
  end
end
