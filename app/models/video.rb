class Video < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :workouts
  belongs_to :lift
  attr_accessible :name
end
