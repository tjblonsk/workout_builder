class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :videos
  has_many :workouts
  has_many :lifts
  attr_accessible :email, :password, :username, :password_confirmation, :name

  def after_create(user)
    user.lifts.create(:name => "Cardio")
    user.lifts.create(:name => "Plyometrics")
    user.lifts.create(:name => "Upperbody")
    user.lifts.create(:name => "Lowerbody")
  end

end
