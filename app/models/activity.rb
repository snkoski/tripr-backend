class Activity < ApplicationRecord
  belongs_to :destination
  has_many :trip_activities
  has_many :trips, through: :trip_activities
  has_many :users
end
