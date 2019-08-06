class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.string :name
      t.integer :room_type
      t.timestamps
    end
  end
end
