class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :converation, foreign_key: true
      t.integer :sender, foreign_key: true
      t.boolean :read, default: false
      t.timestamps
    end
  end
end
