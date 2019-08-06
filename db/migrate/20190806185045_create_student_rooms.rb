class CreateStudentRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :student_rooms do |t|

      t.timestamps
    end
  end
end
