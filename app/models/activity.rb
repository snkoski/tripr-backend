class Activity < ApplicationRecord
  belongs_to :destination
  has_many :trips
  has_many :users
end
