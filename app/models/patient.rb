class Patient < ActiveRecord::Base
  attr_accessible   :city, :medical_aid, :medical_aid_number, :patient_name, :patient_number, :postal_address, :postal_code, :principal_member, :tel_no, :consults_attributes, :dispenses_attributes
  has_many :consults, :dependent => :destroy # A patient can go for one or many consults
  accepts_nested_attributes_for :consults, :allow_destroy => true #so we can manage Consults through Patients - needed to display multiple models per form
end

#Nested Forms Notes
#form will submit the main object (e.g. the Patient) as normal 
#but it will sneak in a bunch of attributes for the other object(s) 
#you want to create (e.g. Consult object(s))

#You will need to prepare the Patient model so that it knows to create 
#one or more Consult objects if it receives their attributes when creating a Patient. 
#This is done by adding a method to your Patient model 
#called #accepts_nested_attributes_for which accepts the name of an association
