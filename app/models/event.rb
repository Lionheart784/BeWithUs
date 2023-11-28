class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :start_at, :end_at, :location, presence: true
end