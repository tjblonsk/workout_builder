class Lift < ActiveRecord::Base
  has_many :videos
  attr_accessible :name
end