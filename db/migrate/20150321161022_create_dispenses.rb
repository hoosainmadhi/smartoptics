class CreateDispenses < ActiveRecord::Migration
  def change
    create_table :dispenses do |t|
      t.integer :consult_id
      t.string :dispense_item
      t.string :dispense_code
      t.decimal :price

      t.timestamps
    end
  end
end
