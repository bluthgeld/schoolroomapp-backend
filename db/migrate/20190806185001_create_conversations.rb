class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|

      t.integer :initiator_id
      t.integer :receiver_id
      t.string :subject

      t.timestamps
    end
  end
end
