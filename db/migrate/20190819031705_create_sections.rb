class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :start_hour
      t.string :end_hour
      t.string :description
      t.string :academic_year
      t.integer :room_id

      t.timestamps
    end
  end
end
