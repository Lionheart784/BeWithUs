class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :images
  validates :title, :description, :start_at, :end_at, :location, presence: true
end
