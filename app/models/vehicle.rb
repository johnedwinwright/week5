class Vehicle < ActiveRecord::Base
  extend FriendlyId
  friendly_id :sluggable, use: [:slugged, :finders]

  belongs_to :model
  belongs_to :user

  has_many :vehicle_features
  has_many :features, through: :vehicle_features
  validates_presence_of :model,
                        :price,
                        :user

  def name
    model.make.name + " " + model.name
  end
  def sluggable
    name + " " + "#{Time.now.to_i}"
  end
end
