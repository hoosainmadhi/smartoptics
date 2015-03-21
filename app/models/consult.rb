class Consult < ActiveRecord::Base
  attr_accessible :patient_id, :reservation_number, :service_date
  belongs_to :patient, :dependent => :destroy # A consult is unique to a patient 
end
