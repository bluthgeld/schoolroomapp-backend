class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :student_number
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :nickname
      t.string :picture
      t.date :start_date
      t.timestamps
    end
  end
end
