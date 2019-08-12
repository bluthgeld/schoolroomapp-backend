class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.integer :initiator_id
      t.integer :receiver_id
      t.boolean :read, default: false
      t.string :subject
      t.string :body
      t.timestamps
    end
  end
end
