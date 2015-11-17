class Make < ActiveRecord::Base
  extend FriendlyId
  friendly_id :sluggable, use: [:slugged, :finders]

  has_many :models
  validates_presence_of :name
  validates_uniqueness_of :name

end
