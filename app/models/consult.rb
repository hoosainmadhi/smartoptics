class Consult < ActiveRecord::Base
  attr_accessible :patient_id, :reservation_number, :service_date
  belongs_to :patient # A consult is unique to a patient 
end
