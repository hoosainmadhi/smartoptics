class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.integer :patient_id
      t.datetime :service_date
      t.string :reservation_number

      t.timestamps
    end
  end
end
