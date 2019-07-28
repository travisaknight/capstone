class Work < ApplicationRecord
  belongs_to :exercise
  belongs_to :muscle
  belongs_to :category
end
