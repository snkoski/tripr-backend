class Destination < ApplicationRecord
  has_many :activities
  has_many :trips
  has_many :users, through: :trips
end
