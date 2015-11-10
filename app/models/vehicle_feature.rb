class VehicleFeature < ActiveRecord::Base
  belongs_to :feature
  belongs_to :vehicle
end
