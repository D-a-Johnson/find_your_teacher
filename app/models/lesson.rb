class Lesson < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :delete_all
  validates :price, presence: true
  validates :duration, presence: true
  validates :date, presence: true
  validates :city, presence: true
  validates :address, presence: true
  geocoded_by :address_city
  after_validation :geocode, if: :will_save_change_to_address?

  def self.search_params(params = {})
    if params[:query].present? && params[:category].present? && params[:date].present?
     Lesson.global_search(params[:query]).global_search(params[:category]).lobal_search(params[:date])
    elsif params[:category].present? && params[:query].present?
      Lesson.global_search(params[:query]).global_search(params[:category])
    elsif params[:query].present? && params[:date].present?
      Lesson.global_search(params[:query]).global_search(params[:date])
    elsif params[:category].present? && params[:date].present?
      Lesson.global_search(params[:category]).global_search(params[:date])
    elsif params[:query].present?
      Lesson.global_search(params[:query])
    elsif params[:category].present?
      Lesson.global_search(params[:category])
    elsif params[:date].present?
      Lesson.global_search(params[:date])
    else
      Lesson.all
    end
  end

  def nice_date
    date.strftime("%b %d, %a  %I:%M %p") if date
  end

  include PgSearch
  pg_search_scope :global_search,
    against: [:detail, :date, :price, :city, :address],
    associated_against: {
      category: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
  def address_city
    "#{address} #{city}"
  end
end
