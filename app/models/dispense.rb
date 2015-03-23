class Dispense < ActiveRecord::Base
  attr_accessible :consult_id, :dispense_code, :dispense_item, :price
  belongs_to :consult
end
