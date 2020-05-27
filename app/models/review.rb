class Review < ApplicationRecord
  ALLOWED_RATING = (0..5).to_a
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { :in => ALLOWED_RATING }, numericality: { only_integer: true }
  validates :restaurant, presence: true
end
