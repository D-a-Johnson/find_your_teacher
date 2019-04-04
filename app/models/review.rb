class Review < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :rating, presence: true
end
