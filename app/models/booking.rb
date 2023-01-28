class Booking < ApplicationRecord
  belongs_to :venue
  belongs_to :user
  validates :date, presence: true
  validates :time_frame, uniqueness: true
  validates :number_of_guest, presence: true
end
