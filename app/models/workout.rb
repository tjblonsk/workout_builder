class Workout < ActiveRecord::Base
  has_and_belongs_to_many :videos
  belongs_to :user
  attr_accessible :name
end
