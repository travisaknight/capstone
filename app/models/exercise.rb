class Exercise < ApplicationRecord
  belongs_to :category
  has_many :workouts
  has_many :works
  has_many :users, through: :workouts
end
