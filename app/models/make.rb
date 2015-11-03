class Make < ActiveRecord::Base
  has_many :models
  validates_presence_of :name
  validates_uniqueness_of :name
end
