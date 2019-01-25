class Movie < ApplicationRecord
  validates :year, numericality: true
  validates :title, :year, presence: true
  validates :plot, length: {in: 5..50}
end
