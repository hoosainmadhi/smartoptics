class Consult < ActiveRecord::Base
  attr_accessible :patient_id, :reservation_number, :service_date, :dispenses_attributes
  belongs_to :patient # A consult is unique to a patient 
  has_many :dispenses, :dependent => :destroy # after consulting optometrist will dispense a frame, lenses etc
  accepts_nested_attributes_for :dispenses , :allow_destroy => true
end
