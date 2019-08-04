class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :workouts
  has_many :exercises, through: :workouts
end
