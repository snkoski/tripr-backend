class User < ApplicationRecord
  has_many :user_trips
  has_many :trips, through: :user_trips
  has_many :destinations, through: :trips
  has_many :activities, through: :trips
end
