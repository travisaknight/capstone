class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  has_many :completes
end
