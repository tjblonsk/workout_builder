class Video < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :workouts
  belongs_to :lift
  attr_accessible :name, :url, :description
end
