class Feature < ActiveRecord::Base
  extend FriendlyId
  friendly_id :sluggable, use: [:slugged, :finders]

  has_many :vehicle_features
  has_many:vehicles, through: :vehicle_features

  def sluggable
    name + " " + "#{Time.now.to_i}"
  end

end
