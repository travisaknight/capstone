class Category < ApplicationRecord
  has_many :works
  has_many :exercises
end
