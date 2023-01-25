class Booking < ApplicationRecord
  belongs_to :venues
  belongs_to :users
  validates :date, presence: true
  validates :time_frame, uniqueness: true
  validates :participants, presence: true
end
