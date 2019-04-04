class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lessons
  has_many :appointments
  has_many :reviews
  validates :username, uniqueness: true, presence: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  # validates :phone_number, uniqueness: true, presence: true

  mount_uploader :avatar, PhotoUploader
end
