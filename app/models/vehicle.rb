class Vehicle < ActiveRecord::Base
  belongs_to :model
  validates_presence_of :model
                        :price
end
