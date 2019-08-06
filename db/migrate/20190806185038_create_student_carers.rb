class CreateStudentCarers < ActiveRecord::Migration[5.2]
  def change
    create_table :student_carers do |t|
      t.integer :student_id
      t.integer :carer_id
      t.integer :fam

      t.timestamps
    end
  end
end
