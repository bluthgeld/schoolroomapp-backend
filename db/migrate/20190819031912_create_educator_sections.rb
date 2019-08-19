class CreateEducatorSections < ActiveRecord::Migration[5.2]
  def change
    create_table :educator_sections do |t|
      t.integer :educator_id
      t.integer :section_id

      t.timestamps
    end
  end
end
