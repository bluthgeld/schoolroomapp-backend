class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|

      t.integer :initiator
      t.integer :receiver
      t.string :subject

      t.timestamps
    end
  end
end
