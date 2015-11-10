class Vehicle < ActiveRecord::Base
  belongs_to :model
  has_many :vehicle_features
  has_many:features, through: :vehicle_features
  validates_presence_of :model
                        :price
end
