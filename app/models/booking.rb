class Booking < ApplicationRecord
  belongs_to :venues
  belongs_to :users
  validates :date, presence: true
  validates :time_frame, uniqueness: true
  validates :number_of_guest, presence: true
end
