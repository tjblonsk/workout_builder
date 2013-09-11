class Lift < ActiveRecord::Base
  has_many :videos
  belongs_to :user
  attr_accessible :name
end