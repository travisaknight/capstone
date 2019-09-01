class Complete < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  # def title
  #   return {exercise} {sets} {reps} {weight}
  # end
end
