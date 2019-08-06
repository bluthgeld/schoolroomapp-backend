class CreateEducatorRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :educator_rooms do |t|
      t.integer :educator_id
      t.integer :room_id
      t.string :hours
      t.string :school_year
      t.timestamps
    end
  end
end
