class Patient < ActiveRecord::Base
  attr_accessible :city, :medical_aid, :medical_aid_number, :patient_name, :patient_number, :postal_address, :postal_code, :principal_member, :tel_no
  has_many :consults # A patient can go for one or many consults
  #accepts_nested_attributes_for :consults #so we can manage Consults through Patients - needed to display multiple models per form
end
