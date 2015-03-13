class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :patient_number
      t.string :patient_name
      t.string :medical_aid
      t.string :medical_aid_number
      t.string :principal_member
      t.string :postal_address
      t.string :city
      t.string :postal_code
      t.string :tel_no

      t.timestamps
    end
  end
end
