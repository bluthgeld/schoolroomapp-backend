class CreateCarers < ActiveRecord::Migration[5.2]
  def change
    create_table :carers do |t|

      t.timestamps
    end
  end
end
