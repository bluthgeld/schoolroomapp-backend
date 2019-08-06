class CreateStudentCarers < ActiveRecord::Migration[5.2]
  def change
    create_table :student_carers do |t|

      t.timestamps
    end
  end
end
