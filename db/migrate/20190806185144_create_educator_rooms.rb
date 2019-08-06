class CreateEducatorRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :educator_rooms do |t|

      t.timestamps
    end
  end
end
