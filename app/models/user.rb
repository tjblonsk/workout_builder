class User < ActiveRecord::Base
  has_and_belongs_to_many :videos
  has_many :workouts
  attr_accessible :name
end
