class Vehicle < ActiveRecord::Base
  belongs_to :model
  belongs_to :user

  has_many :vehicle_features
  has_many :features, through: :vehicle_features
  validates_presence_of :model,
                        :price,
                        :user
end
