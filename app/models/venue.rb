class Venue < ApplicationRecord
  belongs_to :users
  has_many :bookings
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :contact_number, presence: true
  validates :capacity, presence: true
end
