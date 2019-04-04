class Lesson < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates :price, presence: true
  validates :duration, presence: true
  validates :date, presence: true
  validates :city, presence: true
  validates :postal_code, presence: true

  def nice_date
    date.strftime("%b %d, %a  %I:%M %p") if date
  end

  include PgSearch
  pg_search_scope :global_search,
    against: [:detail, :date, :price],
    associated_against: {
      category: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
